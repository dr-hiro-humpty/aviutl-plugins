-- �P���t�F�[�h�C���E�A�E�g
-- @param track0 �t�F�[�h�C��(�b)
-- @param track1 �t�F�[�h�A�E�g(�b)
function simpleFade(obj)
  icnt = obj.totaltime - obj.time
  if (icnt < obj.track1) then
    alp = icnt / obj.track1
    obj.alpha = alp
  elseif (obj.time < obj.track0) then
    alp = obj.time / obj.track0
    obj.alpha = alp
  end
end

-- �X���C�f�B���O�t�F�[�h�C���E�A�E�g
-- @param track0 �t�F�[�h�C��(�b)
-- @param track1 �t�F�[�h�A�E�g(�b)
-- @param track2 �C���ʒu(px)
-- @param track3 �A�E�g�ʒu(px)
function slidingFade(obj)
  v0 = obj.track2 / obj.track0
  v1 = obj.track3 / obj.track1

  icnt = obj.totaltime - obj.time
  if (icnt < obj.track1) then
    alp = icnt / obj.track1
    obj.alpha = alp
    obj.ox = v1 * (1.0 - alp)
  elseif (obj.time < obj.track0) then
    alp = obj.time / obj.track0
    obj.alpha = alp
    obj.ox = v0 * (1.0 - alp)
  end
end

