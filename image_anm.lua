-- 単純フェードイン・アウト
-- @param track0 フェードイン(秒)
-- @param track1 フェードアウト(秒)
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

-- スライディングフェードイン・アウト
-- @param track0 フェードイン(秒)
-- @param track1 フェードアウト(秒)
-- @param track2 イン位置(px)
-- @param track3 アウト位置(px)
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

