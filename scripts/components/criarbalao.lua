local Criarbalao = Class(function(self, inst)
    self.inst = inst
end)

function Criarbalao:TrocarPrefab(p)
    self.pref = p
end

function Criarbalao:Criar()
    local player = self.inst.components.inventoryitem.owner
    local x, y, z = player.Transform:GetWorldPosition()

    if self.pref ~= nil  then
        self.balloon = SpawnPrefab("balloon" .. self.pref)
        self.balloon.Transform:SetPosition(x,y,z)
    end

    if self.inst.components.stackable ~= nil and self.inst.components.stackable:IsStack() then
        self.inst.components.stackable:Get():Remove()
    else
        self.inst:Remove()
    end

    return true
end

return Criarbalao
