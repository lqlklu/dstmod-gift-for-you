local assets = {
	Asset("ANIM", "anim/giftwrap_tool.zip"),
	Asset("IMAGE", "images/giftwrap_tool.tex"),
	Asset("ATLAS", "images/giftwrap_tool.xml"),
}

local function fn()
	local inst = CreateEntity()
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("giftwrap_tool")
	inst.AnimState:SetBuild("swap_giftwrap_tool")
	inst.AnimState:PlayAnimation("idle")

	MakeInventoryFloatable(inst)
	--------------------------------------------------------------------------
	if not TheWorld.ismastersim then
		return inst
	end
	--------------------------------------------------------------------------
	inst:AddComponent("inspectable")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = "giftwrap_tool"
	inst.components.inventoryitem.atlasname = "images/giftwrap_tool.xml"

	return inst
end

return Prefab("giftwrap_tool", fn, assets)
