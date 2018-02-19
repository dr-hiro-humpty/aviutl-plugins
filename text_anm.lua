-- �ꕶ�����\������
-- @param track0 ������ǉ�����Ԋu(�b)
-- @param track1 �����������n�߂鎞��(�b)
function clockFade(obj)
  cnt = obj.time / obj.track0
  icnt = obj.totaltime - obj.time
  if (cnt < obj.index) then
    obj.alpha = 0.0
  elseif (icnt < obj.track1) then
    alp = icnt / obj.track1
    obj.alpha = alp
    sld = (1.0 - alp) * 20
    obj.ox = obj.ox - sld
   end
end

-- �ꕶ�����͂˂Ȃ���o��
-- @param track0 ������ǉ�����Ԋu(�b)
-- @param track1 �����������n�߂鎞��(�b)
function popFade(obj)
  v0 = -100
  ag = 20
  t = obj.time - obj.track0 * (obj.index - 1)

  icnt = obj.totaltime - obj.time
  if (icnt < obj.track1) then
    alp = icnt / obj.track1
    obj.alpha = alp
    sld = (1.0 - alp) * 20
    obj.oy = obj.oy + sld
  elseif (t < 0) then
    obj.alpha = 0.0
  else
    if (t < obj.track0) then
      obj.alpha = t / obj.track0
    end
    y = (v0 * t) + (0.5 * ag * ag * t * t)
    if (y <= 0) then
      obj.oy = obj.oy + y
    end
  end
end
