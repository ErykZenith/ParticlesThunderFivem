function requestParticles(name)
	print(HasNamedPtfxAssetLoaded(name))
	if not HasNamedPtfxAssetLoaded(name) then
		RequestNamedPtfxAsset(name)
		while not HasNamedPtfxAssetLoaded(name) do
			Wait(10)
		end
		print(HasNamedPtfxAssetLoaded(name))
	end
end

function particles_In_Entity(entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, r, g, g scale)
	requestParticles("eryk_particle_addon")
	if not entity or not DoesEntityExist(entity) then return end
	UseParticleFxAsset("eryk_particle_addon")
	local handle = StartNetworkedParticleFxLoopedOnEntity("eryk_effect_sparks", entity, xOffset, yOffset, zOffset, xRot, yRot, zRot, scale, 1, 1, 1)
	SetParticleFxLoopedColour(handle, r, g, g, 0)
	return handle
end

particles_In_Entity(PlayerPedId(),0.0, 0.0, 0.0, 0.0, 90.0, 0.0, 1.0, 0.0, 0.0 2.0)