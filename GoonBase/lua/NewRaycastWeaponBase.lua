----------
-- Payday 2 GoonMod, Weapon Customizer Beta, built on 12/30/2014 6:10:13 PM
-- Copyright 2014, James Wilkinson, Overkill Software
----------

CloneClass( NewRaycastWeaponBase )

Hooks:RegisterHook("NewRaycastWeaponBaseInit")
function NewRaycastWeaponBase.init(self, unit)
	self.orig.init(self, unit)
	Hooks:Call("NewRaycastWeaponBaseInit", self, unit)
end

Hooks:RegisterHook("NewRaycastWeaponBaseUpdate")
function NewRaycastWeaponBase.update(self, unit, t, dt)
	Hooks:Call("NewRaycastWeaponBaseUpdate", self, unit, t, dt)
end

Hooks:RegisterHook("NewRaycastWeaponBaseSetFactoryData")
function NewRaycastWeaponBase.set_factory_data(self, factory_id)
	self.orig.set_factory_data(self, factory_id)
	Hooks:Call("NewRaycastWeaponBaseSetFactoryData", self, factory_id)
end

Hooks:RegisterHook("NewRaycastWeaponBasePostAssemblyComplete")
function NewRaycastWeaponBase.clbk_assembly_complete(self, clbk, parts, blueprint)
	self.orig.clbk_assembly_complete(self, clbk, parts, blueprint)
	Hooks:Call("NewRaycastWeaponBasePostAssemblyComplete", self, clbk, parts, blueprint)
end
-- END OF FILE
