package generator

import (
	"fmt"

	"android/soong/android"
)

func elytraExpandVariables(ctx android.ModuleContext, in string) string {
	elytraVars := ctx.Config().VendorConfig("elytraVarsPlugin")

	out, err := android.Expand(in, func(name string) (string, error) {
		if elytraVars.IsSet(name) {
			return elytraVars.String(name), nil
		}
		// This variable is not for us, restore what the original
		// variable string will have looked like for an Expand
		// that comes later.
		return fmt.Sprintf("$(%s)", name), nil
	})

	if err != nil {
		ctx.PropertyErrorf("%s: %s", in, err.Error())
		return ""
	}

	return out
}
