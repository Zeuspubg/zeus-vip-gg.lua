gg.alert("ZEUS VİP GG")

function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then gg.toast(Name.."  modify"..#data.."Article data") local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item)end end end gg.setValues(t) else gg.toast(Name.."Failed to open", false) return false end else gg.toast(Name.."Failed to open") return false end end function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Smile reminder: open successfully, modify a total" .. xgsl .. "ArticleΔΘ") else gg.toast(qmnb[2]["name"] .. "Smile reminder: failed to open") end end end end function PS() end function setvalue(address,flags,value) PS('Modify address value (address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end 
function SearchWrite(Search, Write, Type, Name)  gg.clearResults()  gg.setVisible(false)  gg.searchNumber(Search[1][1], Type)  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}  local base = Search[1][2]  if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base  local num = Search[k][1]  for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = v.flags  end  tmp = gg.getValues(tmp)  for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end  for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast("Found"..#data.."Code Data")  local t = {}  local base = Search[1][2]  for i=1, #data do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = Type  t[#t].value = w[1]  if (w[3] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Name.."Successfully opened!  already"..#t.."Code Data")  gg.addListItems(t)  else  gg.toast(Name.."Failed to open", false)  return false  end  else  gg.toast(Name.."Failed to open")  return false  end  end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.."????"..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.."????"..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.."????", false)  return false  end  else  gg.toast("????")  return false  end end  
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "Failed to open") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "Successfully opened, modified in total" .. xgsl .. "Article data") else gg.toast(qmnb[2]["name"] .. "No data found, failed to open") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("Successfully opened, modified in total"..#t.."Article data") gg.addListItems(t) else gg.toast("No data found, failed to open", false) return false end else gg.toast("Not Found") return false end end
local memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false  function name(n)  if lib ~= n then  lib = n  local ranges = gg.getRangesList(lib)  if #ranges == 0 then  print('⚠️ ᴇʀʀᴏʀ : ' .. lib .. ' ⚠️')  gg.alert('ᴇʀʀᴏʀ : ' .. lib .. '\n ᴘʟᴇᴀꜱᴇ ꜱᴇʟᴇᴄᴛ ᴄᴀʟʟ ᴏꜰ ᴅᴜᴛʏ ᴘʀᴏᴄᴇꜱꜱ')  gg.toast('ᴇʀʀᴏʀ : ' .. lib .. '\n ᴘʟᴇᴀꜱᴇ ꜱᴇʟᴇᴄᴛ ᴄᴀʟʟ ᴏꜰ ᴅᴜᴛʏ ᴘʀᴏᴄᴇꜱꜱ ')  os.exit()  else  memFrom = ranges[1].start  memTo = ranges[#ranges]['end']   end  end  end  function hex2tbl(hex)  local ret = {}  hex:gsub('%S%S', function(ch)  ret[#ret + 1] = ch  return ''  end)  return ret  end  function original(orig)  local tbl = hex2tbl(orig)  local len = #tbl  if len == 0 then  return  end  local used = len  if len > lim then  used = lim  end  local s = ''  for i = 1, used do  if i ~= 1 then  s = s .. ';'  end  local v = tbl[i]  if v == '??' or v == '**' then  v = '0~~0'  end  s = s .. v .. 'r'  end  s = s .. '::' .. used  gg.searchNumber(s, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, memFrom, memTo)  if len > used then  for i = used + 1, len do  local v = tbl[i]  if v == '??' or v == '**' then  v = 256  else  v = ('0x' .. v) + 0  if v > 127 then  v = v - 256  end  end  tbl[i] = v  end  end  local found = gg.getResultCount()  results = {}  local count = 0  local checked = 0  while not (found <= checked) do  local all = gg.getResults(8)  local total = #all  local start = checked  if total < checked + used then  break  end  for i, v in ipairs(all) do  v.address = v.address + myoffset  end  gg.loadResults(all)  while total > start do  local good = true  local offset = all[1 + start].address - 1  if len > used then  local get = {}  for i = lim + 1, len do  get[i - lim] = {  address = offset + i,  flags = gg.TYPE_BYTE,  value = 0  }  end  get = gg.getValues(get)  for i = lim + 1, len do  local ch = tbl[i]  if ch ~= 256 and get[i - lim].value ~= ch then  good = false  break  end  end  end  if good then  count = count + 1  results[count] = offset  checked = checked + used  else  local del = {}  for i = 1, used do  del[i] = all[i + start]  end  gg.removeResults(del)  end  start = start + used  end  end  end  function replaced(repl)  num = num + 1  local tbl = hex2tbl(repl)  if src ~= nil then  local source = hex2tbl(src)  for i, v in ipairs(tbl) do  if v ~= '??' and v ~= '**' and v == source[i] then  tbl[i] = '**'  end  end  src = nil  end  local cnt = #tbl  local set = {}  local s = 0  for _, addr in ipairs(results) do  for i, v in ipairs(tbl) do  if v ~= '??' and v ~= '**' then  s = s + 1  set[s] = {  address = addr + i,  value = v .. 'r',  flags = gg.TYPE_BYTE  }   end  end  end  if s ~= 0 then  gg.setValues(set)  end  ok = true  end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function read_file(path) local file = io.open(path, "rb") if not file then return nil end local content = file:read("*a") file:close() return content end              

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function HARRY()
end
function setvalue(address,flags,value) HARRY('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function HaoGe(Nc,Type,Search,Write) gg.clearResults() gg.setRanges(Nc) gg.setVisible(false) gg.searchNumber(Search[1][1],Type) local count=gg.getResultCount() local result=gg.getResults(count) gg.clearResults() local data={} local base=Search[1][2] if(count>0)then for i,v in ipairs(result)do v.isUseful=true end for k=2,#Search do local tmp={} local offset=Search[k][2]-base local num=Search[k][1] for i,v in ipairs(result)do tmp[#tmp+1]={} tmp[#tmp].address=v.address+offset tmp[#tmp].flags=v.flags end tmp=gg.getValues(tmp) for i,v in ipairs(tmp)do if(tostring(v.value)~=tostring(num))then result[i].isUseful=false end end end for i,v in ipairs(result)do if(v.isUseful)then data[#data+1]=v.address end end if(#data>0)then gg.toast("\n🔍搜索到"..#data.."数据\n🔰开始进行偏移") local t={} local base=Search[1][2] for i=1,#data do for k,w in ipairs(Write)do offset=w[2]-base t[#t+1]={} t[#t].address=data[i]+offset t[#t].flags=Type t[#t].value=w[1] if(w[3]==true)then local item={} item[#item+1]=t[#t] item[#item].freeze=true gg.addListItems(item) end end end gg.setValues(t) gg.sleep(400) gg.toast("\n🚬"..Name.."成功\n🛠共修改"..#t.."数据") else gg.toast("\n❌"..Name.."失败") return false end else gg.toast("\n❌"..Name.."失败") return false end end


gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")
gg.sleep(900)
gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")
gg.sleep(900)
gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")
gg.sleep(900)
gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")
gg.sleep(900)
gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")
gg.sleep(900)
gg.toast("𝑆𝐶𝑅𝐼𝑃𝑇  𝐵𝑌 𝑍𝐸𝑈𝑆")

on = ""
off = "️"

FLASH = off

FASTLAND = off


HOME = 1
function HOME()
  MN8 = gg.choice({  
       "╭═══════════════╮\n    🛡𝐀𝐍𝐓𝐈𝐁𝐀𝐍🛡 ️\n╰═══════════════╯",
       "╭═══════════════╮\n    🇹🇷𝐑𝐈𝐒𝐊 𝐌𝐄𝐍𝐔🇹🇷\n╰═══════════════╯",
       "╭═══════════════╮\n    🇹🇷️𝐎𝐘𝐔𝐍 𝐌𝐄𝐍𝐔🇹🇷\n╰═══════════════╯",
       "╭═══════════════╮\n    🇹🇷𝐒𝐏𝐄𝐄𝐃 𝐌𝐄𝐍𝐔🇹🇷\n╰═══════════════╯",
       "╭═══════════════╮\n     🇹🇷𝐒𝐊𝐈𝐍 𝐌𝐄𝐍𝐔🇹🇷\n╰═══════════════╯",
       "╭═══════════════╮\n    🚔𝐀𝐑𝐀𝐁𝐀 𝐔𝐂𝐔𝐑𝐌𝐀ᵃᶜᵏᵃᵖᵃᵗ🚔\n╰═══════════════╯",
       "╭═══════════════╮\n    ⌚𝐇𝐈𝐙𝐋𝐈 𝐏𝐀𝐑𝐀𝐒𝐔𝐓ᵃᶜᵏᵃᵖᵃᵗ⌚\n╰═══════════════╯" .. FASTLAND,
       "╭═══════════════╮\n     🇹🇷𝙲𝙸𝙺𝙸𝚂🇹🇷\n╰═══════════════╯",
    }, 10, os.date("✩｡:*•.─────❁ ❁─────.•*:｡✩\n 🖤 𝚉𝙴𝚄𝚂 𝚂𝙲𝚁𝙸𝙿𝚃︎︎︎ ❤️ \n 🍯 𝚅𝙴𝚁𝚂𝙸𝙾𝙽 𝚅1.0 ㊙️ 𝙿𝚄𝙱𝙶 1.6.0 𝐙𝐄𝐔𝐒𝐒𝐒 \n ❮ 🗓️ Tᴀʀɪʜ: %d/%m/%Y 🗓️❯\n✩｡:*•.─────❁ ❁─────.•*:｡✩"))
   
    
    
             

  if MN8 == nil then
  else
    if MN8 == 1 then
      BYPASS()
    end
       if MN8 == 2 then
      SILAH()
    end
    if MN8 == 3 then
      OYUN()
    end
      if MN8 == 4 then
      SPEED()
    end
   if MN8 == 5 then
      SKN()
    end
    if MN8 == 6 then
      uc()
    end
  if MN8 == 7 then
    fastla()
    end
    if MN8 == 8 then
      CLOSE()
    end
  end
  PUBGMH = -1
end



function BYPASS()
ML = gg.multiChoice({ 
    "🛡️𝐀𝐍𝐓𝐈𝐁𝐀𝐍 𝐕1\n╚❑[Lᴏʙʙʏ]",
    "🛡️𝐀𝐍𝐓𝐈𝐁𝐀𝐍 𝐕2\n╚❑[Lᴏʙʙʏ]",
    "🛡️10 𝐃𝐀𝐊𝐈𝐊𝐀 𝐁𝐀𝐍 𝐅𝐈𝐗\n╚❑[𝙻𝙾𝙶𝙾]",
     "🛡️𝐁𝐘𝐏𝐀𝐒𝐒 𝐋𝐎𝐆𝐎🛡️\n╚❑[𝙻𝙾𝙶𝙾]",
      "⬅️𝐆𝐄𝐑𝐈",
}, nil, "✨ 𝙰𝙽𝚃𝙸𝙱𝙰𝙽 𝙼𝙴𝙽𝚄 ✨")
   if ML == nil then
  else
    if ML[1] == true then
    antiban()
    end
     if ML[2] == true then
     antibanv2()
     end
    if ML[3] == true then
     dk3()
     end
    if ML[4] == true then
     logo4()
     end
    if ML[5] == true then
    HOME()
    end
    end
    PUBGMH = -1
    end




function antiban()
gg.alert("●▬▬▬▬▬▬▬▬▬▬▬▬● \n 🛡️ ᎪΝͲᏆᏴᎪΝ ᎪᏟ̧ᏆᏞᏆᎽϴᎡ ᏙᎬ ᏞϴᏀᏞᎪᎡ ՏİᏞİΝİᎽϴᎡ. ⌛️ \n ●▬▬▬▬▬▬▬▬▬▬▬▬●")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3,12681497E-36;1,50631504E-36;1,50684507E-36;9,68372361E-35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1,01541202E-28", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3,28550671E-36;3,09742761E-36;1,50689135E-36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1,01541202E-28", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.refineNumber("620,137,442,967,552", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70368744177664;288233678981562368", gg.TYPE_QWORD)
gg.refineNumber("70368744177664", gg.TYPE_QWORD)
gg.getResults(200000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(200000)
gg.editAll("361418272522109953", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("9,62964972E-35~1,51308181E-36;1,51308181E-36F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultCount()
gg.searchNumber("6,05232726E-36~9,68372361E-35;6,05232726E-36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1,01541202E-28", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("562,950,054,084,609;1,086,693,900,291", gg.TYPE_QWORD)
gg.refineNumber("562,950,054,084,609", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)  
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("4,587,366,580,570,387,872;285,901,500,485,608", gg.TYPE_QWORD)
gg.refineNumber("4,587,366,580,570,387,872", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("567,376,477,577,288;567,376,477,577,216", gg.TYPE_QWORD)
gg.refineNumber("567,376,477,577,288", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("285,901,500,874,696;285.901.500.874.648", gg.TYPE_QWORD)
gg.refineNumber("285,901,500,874,696", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("17,579,385,815,041;285,901,500,874,720", gg.TYPE_QWORD)
gg.refineNumber("17,579,385,815,041", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("72,200,960,130,286,232;9,222,458,785,140,834,577", gg.TYPE_QWORD)
gg.refineNumber("72,200,960,130,286,232", gg.TYPE_QWORD)
gg.getResults(5000)
gg.editAll("72,057,598,332,895,246", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1668248176;1936024419", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1668248176",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1936288863;1718511967", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1936288863",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1734701680;1717531507", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1734701680",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1634038371;1734701663", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1634038371",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1634034015;1668246623", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1634034015",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1936020063;1986618463", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1936020063",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1449092470;1936156018", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1449092470",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717523536;2003719519", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1717523536",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1097168481;1634625385", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1097168481",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1399153505;1633812580", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1399153505",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1936280687;1936287589", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1936280687",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1632466025;1667584624", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1632466025",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1718503792;1632462181", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1718503792",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1711305843;1634559849", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1711305843",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1734701663;1632527724", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1734701663",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1627416431;1398896225", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1627416431",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1632531557;1130722921", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1632531557",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1632526188;1667855457", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1632526188",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1667590754;1130722921", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1667590754",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1632269413;1399746409", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1632269413",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1667592704;1634099051", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1667592704",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1667331187;1632527457", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1667331187",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)  
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1130850643;1986089823", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130850643",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1717526904;1668246623", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1717526904",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1633969775;1668246623", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1633969775",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1667331155;1668246623", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1667331155",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1667457280;1936682083", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1667457280",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1936682083;1667590243", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1936682083",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1668246623;1633902440", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1668246623",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("1734701680", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1936024419;1734307186", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1936024419",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("1734701680", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1634038371;1633906540", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1634038371",gg.TYPE_DWORD)
gg.getResults(100000)
gg.editAll("1734701680", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("●▬▬▬▬▬▬▬▬▬▬▬▬● \n 🛡️ ᎪΝͲᏆᏴᎪΝ V1 ᎪᏟ̧ᏆᏞᎠᏆ \n ☺️ႮᏟᎡᎬͲՏİᏃ ᎻİᏞᎬ\n 🥺ՏᎪҒᎬ ϴᎽΝᎪ = Ꮯ̧ϴᎡᏴᎪ ￣︶￣ \n ●▬▬▬▬▬▬▬▬▬▬▬▬●")
end


function antibanv2()
gg.alert("●▬▬▬▬▬▬▬▬▬▬▬▬● \n 🛡️ ᎪΝͲᏆᏴᎪΝ ᎪᏟ̧ᏆᏞᏆᎽϴᎡ ᏙᎬ ᏞϴᏀᏞᎪᎡ ՏİᏞİΝİᎽϴᎡ. ⌛️ \n ●▬▬▬▬▬▬▬▬▬▬▬▬●")
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("3,10919404e-36~3,00982265e-36;3,00982265e-36;1,24837945e-35;3,10919404e-36;1,24367747e-35", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9,68372361E-35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,50478505E-36;3,11507187E-36;3,00977673E-36;6,25365362E-36;3,00982265E-36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9,68372361E-35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("9,68372361E-35;3,00945782E-36;3,00952418E-36;3,11507187E-36;3,10919404e-36", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9,68372361E-35", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1,50463277E-36;1,51308181E-36;6,05232726E-36;9,68372361E-35F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("9,68372361E-35", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("620137442967552;303473799200768", gg.TYPE_QWORD)
gg.refineNumber("620137442967552", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288516253469900800", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("578351706144768;564058054983680", gg.TYPE_QWORD)
gg.refineNumber("578351706144768", gg.TYPE_QWORD)
gg.getResults(62877)
gg.editAll("288516253469900800", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("562954248388608;562949953421312", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("562954248388608", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("576460752303423488;562949953421312", gg.TYPE_QWORD, nil, nil, nil, nil)
gg.refineNumber("576460752303423488", gg.TYPE_QWORD)
gg.getResults(50000)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("135682;262403", gg.TYPE_DWORD)
gg.refineNumber("135682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133634;262403", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134914;131586", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131331;133634", gg.TYPE_DWORD)
gg.refineNumber("131331", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131842;134402", gg.TYPE_DWORD)
gg.refineNumber("131842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("133378;134146", gg.TYPE_DWORD)
gg.refineNumber("133378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("134146;144387", gg.TYPE_DWORD)
gg.refineNumber("134146", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("●▬▬▬▬▬▬▬▬▬▬▬▬● \n 🛡️ ᎪΝͲᏆᏴᎪΝ ᎪᏟ̧ᏆᏞᎠᏆ V2 \n ☺️ႮᏟᎡᎬͲՏİᏃ ᎻİᏞᎬ\n 🥺ՏᎪҒᎬ ϴᎽΝᎪ = Ꮯ̧ϴᎡᏴᎪ ￣︶￣ \n ●▬▬▬▬▬▬▬▬▬▬▬▬●")
end


function dk3()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DWORD)
gg.getResults(200)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.getResults(50000)
gg.editAll("136", gg.TYPE_BYTE)
gg.getResults(50000)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.getResults(50000)
gg.editAll("136", gg.TYPE_BYTE)
gg.getResults(50000)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)
gg.getResults(200)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.editAll("116", gg.TYPE_BYTE)
gg.clearResults()
gg.setVisible(false)
gg.editAll("116", gg.TYPE_BYTE)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.editAll("116", gg.TYPE_BYTE)
gg.clearResults()
gg.clearResults()
gg.setVisible(false)
gg.editAll("116", gg.TYPE_BYTE)
gg.clearResults()
gg.toast("10 𝘿𝘼𝙆𝙄𝙆𝘼 𝘽𝘼𝙉 𝙊𝙉𝙇𝙀𝙔𝙄𝘾𝙄 𝘼𝙆𝙏𝙄𝙁 𝙕𝙀𝙐𝙎 😎 ")
end


function logo4()
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC6B57000  
so=gg.getRangesList('libtersafe.so')[1].start
py=0x194CCCC2
so=gg.getRangesList('libtersafe.so')[1].start
py=0x91FDD994
so=gg.getRangesList('libtersafe.so')[1].start
py=0x9392A660
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF000
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF14C
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF1FC
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF18
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF1FC
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF28
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF598
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDB8
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF738
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF18
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDC8
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDD8
so=gg.getRangesList('libtersafe.so')[1].start
py=0x8D487D1C
so=gg.getRangesList('libtersafe.so')[1].start
py=0x8D486B1C
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC6B57000  
so=gg.getRangesList('libtersafe.so')[1].start
py=0x194CCCC2
so=gg.getRangesList('libtersafe.so')[1].start
py=0x91FDD994
so=gg.getRangesList('libtersafe.so')[1].start
py=0x9392A660
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF000
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF14C
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF1FC
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF18
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF1FC
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF28
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF598
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDB8
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDF738
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFF18
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDC8
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDD8
so=gg.getRangesList('libtersafe.so')[1].start
py=0x8D487D1C
so=gg.getRangesList('libtersafe.so')[1].start
py=0xC1CDFDD8
so=gg.getRangesList('libtersafe.so')[1].start
py=0x930E0104
so=gg.getRangesList('libtersafe.so')[1].start
py=0x930E015C
so=gg.getRangesList('libtersafe.so')[1].start
py=0x930E018C
so=gg.getRangesList('libtersafe.so')[1].start
py=0x93323E48
gg.toast("𝐋𝐎𝐆𝐎 𝐁𝐘𝐏𝐀𝐒𝐒 𝐀𝐊𝐓𝐈𝐅")
end

function SILAH()
	silahhack1=gg.multiChoice({
    "💢 𝐒𝐈𝐇𝐈𝐑𝐋𝐈 𝐌𝐄𝐑𝐌𝐈\n╚❑[Oʏᴜɴ]",
    "✨ 𝐁𝐑𝐔𝐓𝐀𝐋 𝐌𝐀𝐆𝐈𝐂 𝐁𝐔𝐋𝐋𝐄𝐓\n╚❑[Oʏᴜɴ]",
    "💀 𝐊𝐀𝐅𝐀𝐃𝐀𝐍 𝐕𝐔𝐑𝐌𝐀\n╚❑[Oʏᴜɴ]",
    "🔫 𝐀𝐈𝐌𝐋𝐎𝐂𝐊\n╚❑[Oʏᴜɴ]",  
    "➕ 𝐒𝐌𝐀𝐋𝐋 𝐂𝐑𝐎𝐒𝐇𝐀𝐈𝐑\n╚❑[Oʏᴜɴ]",
    "📳 𝐒𝐀𝐑𝐒𝐈𝐍𝐓𝐈 𝐎𝐍𝐋𝐄𝐘𝐈𝐂𝐈\n╚❑[Oʏᴜɴ]",
    "🏹𝐍𝐎 𝐑𝐄𝐂𝐎𝐈𝐋\n╚❑[Oʏᴜɴ]",
    "🗡️𝐋𝐄𝐒𝐒 𝐑𝐄𝐂𝐎𝐈𝐋\n╚❑[Oʏᴜɴ]",
    "❌𝐇𝐀𝐒𝐀𝐑 𝐄𝐅𝐄𝐂𝐓𝐈i\n╚❑[Oʏᴜɴ]",
    "🔙𝐆𝐄𝐑𝐈",
}, nil, "✨ 𝚁𝙸𝚂𝙺 𝙼𝙴𝙽𝚄 ✨")
		 
	 if silahhack1 == nil then
  else
     if silahhack1[1] == true then
    headshott()
    end
    if silahhack1[2] == true then
    magic()
    end
   if silahhack1[3] == true then
    kafa()
    end
	 if silahhack1[4] == true then
    aimbot()
    end
     if silahhack1[5] == true then
    mal()
    end
  if silahhack1[6] == true then
    sekk()
    end
     if silahhack1[7] == true then
    rec()
    end
     if silahhack1[8] == true then
    lessrecoil()
    end  
    if silahhack1[9] == true then
    efk()
    end        
     if silahhack1[10] == true then
      HOME()
    end
   end
    PUBGMH = -1
    end

----------------------------
 

  
  
function headshott()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1239", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("560", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𝙎𝗜𝗛𝗜𝗥𝗟𝗜 𝗠𝗘𝗥𝗠𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦 ")
end

function magic()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1239", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("90", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("99999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("500.8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-1200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("150", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("15;28;16;26;8;18", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(56)
gg.editAll("-1339", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(900)
gg.editAll("1100", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("😤𝗔𝗥𝗧𝗜𝗞 𝗛𝗘𝗥 𝗦𝗜𝗟𝗔𝗛 𝗔𝗩𝗠 𝗭𝗘𝗨𝗦𝗦 😤")
end


function kafa()
offset1 = 0xE05CA28
offset2 = 0xE05C908
offset3 = 0xDF63728
offset4 = 0xDF63724
offset5 = 0xDF636EC
offset6 = 0xDF62D24
offset7 = 0xDF62C28
offset8 = 0xDF62C18
offset9 = 0xDF61300
offset10 = 0xDF611A4
offset11 = 0xDF611A0
offset12 = 0xDF61168
offset13 = 0xDF5C798
offset14 = 0xDF5C794
offset15 = 0xDF5C75C
offset16 = 0xDF5C248
offset17 = 0xC324680
offset18 = 0xD67EA34
offset19 = 0xD67EA6C
offset20 = 0xD67EA70
offset21 = 0xD6C9DD4
offset22 = 0xD6C9E0C
offset23 = 0xD6C9E10
offset24 = 0xD82A2A0
offset25 = 0xDB80BA8
offset26 = 0xDC8E78C
offset27 = 0xDD229C0
offset28 = 0xDD2B3D0
offset29 = 0xDF5C20C
offset30 = 0xDF5C244
offset31 = 0x38031658
offset32 = 0x15622428
offset33 = 0x156223F0
offset34 = 0x156223EC
offset35 = 0x15622290
offset36 = 0x15621ED8
offset37 = 0x15621EA0
offset38 = 0x15621E9C
offset39 = 0x15621D40
offset40 = 0x1561F988
offset41 = 0x1561F978
offset42 = 0x1561F87C
UE4Base=gg.getRangesList("libUE4.so")[1].start 
setvalue(UE4Base+offset1,16,50000)
setvalue(UE4Base+offset2,16,50000)
setvalue(UE4Base+offset3,16,50000)
setvalue(UE4Base+offset4,16,50000)
setvalue(UE4Base+offset5,16,50000)
setvalue(UE4Base+offset6,16,50000)
setvalue(UE4Base+offset7,16,50000)
setvalue(UE4Base+offset8,16,50000)
setvalue(UE4Base+offset9,16,50000)
setvalue(UE4Base+offset10,16,50000)
setvalue(UE4Base+offset11,16,50000)
setvalue(UE4Base+offset12,16,50000)
setvalue(UE4Base+offset13,16,50000)
setvalue(UE4Base+offset14,16,50000)
setvalue(UE4Base+offset15,16,50000)
setvalue(UE4Base+offset16,16,50000)
setvalue(UE4Base+offset17,16,50000)
setvalue(UE4Base+offset18,16,50000)
setvalue(UE4Base+offset19,16,50000)
setvalue(UE4Base+offset20,16,50000)
setvalue(UE4Base+offset21,16,50000)
setvalue(UE4Base+offset22,16,50000)
setvalue(UE4Base+offset23,16,50000)
setvalue(UE4Base+offset24,16,50000)
setvalue(UE4Base+offset25,16,50000)
setvalue(UE4Base+offset26,16,50000)
setvalue(UE4Base+offset27,16,50000)
setvalue(UE4Base+offset28,16,50000)
setvalue(UE4Base+offset29,16,50000)
setvalue(UE4Base+offset30,16,50000)
setvalue(UE4Base+offset31,16,50000)
setvalue(UE4Base+offset32,16,50000)
setvalue(UE4Base+offset33,16,50000)
setvalue(UE4Base+offset34,16,50000)
setvalue(UE4Base+offset35,16,50000)
setvalue(UE4Base+offset36,16,50000)
setvalue(UE4Base+offset37,16,50000)
setvalue(UE4Base+offset38,16,50000)
setvalue(UE4Base+offset39,16,50000)
setvalue(UE4Base+offset40,16,50000)
setvalue(UE4Base+offset41,16,50000)
setvalue(UE4Base+offset42,16,50000)
gg.toast(" 👑 𝗞𝗔𝗙𝗔𝗗𝗔𝗡 𝗩𝗨𝗥𝗠𝗔 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦 👑")
end

	
function aimbot()
so=gg.getRangesList("libUE4.so")[1].start
py=0x29F70A0
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F70AC 
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x29F70A0
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x3ED8A6C 
setvalue(so+py,16,-0.0001)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F71E0
setvalue(so+py,16,99999)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F70AC
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2E18
setvalue(so+py,16,-3.86856308e25)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2E1C
setvalue(so+py,16,-3.86856308e25)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2D98
setvalue(so+py,16,1.66153539e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B3E60
setvalue(so+py,16,1.66153539e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F71E0 
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x29F70A0
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F70AC 
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start
py=0x29F70A0
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x3ED8A6C 
setvalue(so+py,16,-0.0001)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F71E0
setvalue(so+py,16,99999)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F70AC
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2E18
setvalue(so+py,16,-3.86856308e25)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2E1C
setvalue(so+py,16,-3.86856308e25)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B2D98
setvalue(so+py,16,1.66153539e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0x11B3E60
setvalue(so+py,16,1.66153539e35)
so=gg.getRangesList('libUE4.so')[1].start
py=0x29F71E0 
setvalue(so+py,16,0)
gg.toast("𝐀𝐈𝐌𝐋𝐎𝐂𝐊 𝐀𝐊𝐓𝐈𝐅 𝐙𝐄𝐔𝐒")
end


function sekk()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966E-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" 𝗦𝗔𝗥𝗦𝗜𝗡𝗧𝗜 𝗢𝗡𝗟𝗘𝗬𝗜𝗖𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦 ")
end


function mal()
gg.clearResults()
gg.searchNumber("-1283514890403435972", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1288018490030810565", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.toast(" 𝗦𝗠𝗔𝗟𝗟 𝗖𝗥𝗢𝗦𝗛𝗔𝗜𝗥 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦 ")
end

		
function rec()
gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.427811e28;8.5626969E-26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.427811e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(10)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1.2382424e28;-1.4239333e28;-1.1144502e28;-1.8331474e27;-7.1608877e24::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(2)
    gg.editAll("90", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(16384)
    gg.searchNumber("-2.786982e28;-2.2673448e24;-1.13688735E-13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-2.786982e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(1)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-6.1549454e27;1.8638966E-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
gg.toast("𝗧𝗔𝗠 𝗦𝗘𝗞𝗠𝗘𝗠𝗘 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦")
end

 
function lessrecoil()
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C463C
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C5DD8
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x3DB0C90
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C463C
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C5DD8
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x3DB0C90
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C463C
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x15C5DD8
setvalue(so+py,16,0)
so=gg.getRangesList("libUE4.so")[1].start  
py=0x3DB0C90
setvalue(so+py,16,0)
gg.toast("𝗟𝗘𝗦𝗦 𝗥𝗘𝗖𝗢𝗜𝗟 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦")
end

 
function efk()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("9.1022205E-38;0.0001;9.1025635E-38::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("140", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-7.1611644e24;0.0001;1.1297201E-37::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0.0001", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(500)
gg.editAll("-125", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(200)
gg.editAll("500", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("𝗛𝗔𝗦𝗔𝗥 𝗘𝗙𝗘𝗖𝗧𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦")
end   
           
                
                          
                            

function OYUN()
  oyunhack1 = gg.choice({
    "📡𝐀𝐍𝐓𝐄𝐍\n╚❑[Oʏᴜɴ]",
    "🌫️️𝐒𝐈𝐒 𝐊𝐀𝐋𝐃𝐈𝐑𝐌𝐀\n╚❑[Oʏᴜɴ]", 
    "🌄𝐂İ𝐌𝐄𝐍 𝐊𝐀𝐋𝐃𝐈𝐑\n╚❑[Oʏᴜɴ]",     
    "🔙𝐆𝐄𝐑𝐈",
  }, 10, "✨ 𝙾𝚈𝚄𝙽 𝙼𝙴𝙽𝚄 ✨")
  if oyunhack1 == nil then
  else
if oyunhack1 == 1 then
arac()
end
if oyunhack1 == 2 then
siskalk()
end
if oyunhack1 == 3 then
cim()
end
if oyunhack1 == 4 then
HOME()
end
end
PUBGMH = -1
end


function anten()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.toast("📡𝗔𝗡𝗧𝗘𝗡 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦📡")
end




function siskalk()
so=gg.getRangesList("libUE4.so")[1].start py=0x28B2A98 setvalue(so+py,16,0)
gg.sleep(100)
so = gg.getRangesList("libUE4.so")[1].start
py = 51274712
setvalue(so + py, 16, 0)
gg.toast("𝗦𝗜𝗦 𝗞𝗔𝗟𝗗𝗜𝗥𝗠𝗔 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦 ")
end


function cim()
so = gg.getRangesList("libUE4.so")[1].start
py = 39165928
setvalue(so + py, 4, 0)
so=gg.getRangesList("libUE4.so")[1].start py=0x28B2A98 setvalue(so+py,16,0)
gg.sleep(100)
so = gg.getRangesList("libUE4.so")[1].start
py = 51274712
setvalue(so + py, 16, 0)
gg.toast("𝗖𝗜𝗠 𝗞𝗔𝗟𝗗𝗜𝗠𝗔 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦")
end


function SKN()
gamechat1 = gg.choice({
"🔫 𝚂𝙸𝙻𝙰𝙷 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"👕 𝙺𝙸𝚈𝙰𝙵𝙴𝚃 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"💃 𝙴𝙼𝙾𝙹𝙸 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"🚙 𝙰𝚁𝙰𝙱𝙰 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"🎒 𝙲𝙰𝙽𝚃𝙰 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"⛑️ 𝙺𝙰𝚂𝙺 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄",
"🔙 Geri",
},nil,"👘 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄 👘")
if gamechat1 == nil then
else
if gamechat1 == 1 then
TR()
end
if gamechat1 == 2 then
kfsikin()
end
if gamechat1 == 3 then
dans()
end
if gamechat1 == 4 then
araba1()
end
if gamechat1 == 5 then
cnta()
end
if gamechat1 == 6 then
kask()
end
if gamechat1 == 7 then
HOME()
end
end
PUBGMH = -1
end




function dans()
DNS1 = gg.choice({
"🕺 Emoji 3. Sezon\n╚❑[Oʏᴜɴ]",
"🐇 Emoji 6. Sezon\n╚❑[Oʏᴜɴ]",
"🌮 Emoji Dürümcü\n╚❑[Oʏᴜɴ]",
"😤 Emoji işgalci\n╚❑[Oʏᴜɴ]",
"✨ Emoji maskara\n╚❑[Oʏᴜɴ]",
"🔙 Geri",
},nil,"💃 EMOJİ MENÜ 💃")
if DNS1 == nil then
else
if DNS1 ==1 then
em1()
end
if DNS1 == 2 then
em2()
end
if DNS1 == 3 then
em3()
end
if DNS1 == 4 then
em4()
end
if DNS1 == 5 then
em5()
end
if DNS1 == 6 then
HOME()
end
end
PUBGMH = -1
end

function em1()
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_ANONYMOUS)
gg.processResume()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("2,202,101", gg.TYPE_DWORD)
gg.toast(" 3. 𝗦𝗘𝗭𝗢𝗡 𝗘𝗠𝗢𝗝𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦 ")
end

function em2()
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_ANONYMOUS)
gg.processResume()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("2,204,101", gg.TYPE_DWORD)
gg.processResume()
gg.toast(" 6. 𝗦𝗘𝗭𝗢𝗡 𝗘𝗠𝗢𝗝𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦 ")
end

function em3()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2,200,101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2,201,201", gg.TYPE_DWORD)
gg.toast(" 𝗗𝗨??𝗨𝗠𝗖𝗨 𝗘𝗠𝗢𝗝𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦 ")
end

function em4()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.getResults(1)
gg.searchNumber("2200101",gg.TYPE_DWORD)
gg.getResults(0)
gg.getResults(1000)
gg.editAll("12205001",gg.TYPE_DWORD)
gg.toast(" 𝗜𝗦𝗚𝗔𝗟𝗖𝗜 𝗗𝗔𝗡𝗦 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦 ")
end

function em5()
gg.setRanges(gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_C_DATA | gg.REGION_C_BSS | gg.REGION_PPSSPP | gg.REGION_ANONYMOUS)
gg.processResume()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2200101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2200101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("12203901", gg.TYPE_DWORD)--maskara
gg.toast(" 𝗠𝗔𝗦𝗞𝗔𝗥𝗔 𝗘𝗠𝗢𝗝𝗜 𝗔𝗞𝗧𝗜𝗙 𝗭𝗘𝗨𝗦𝗦 ")
end

function kfsikin()
KFT = gg.choice({
"🤴 𝙵𝙸𝚁𝙴𝚅𝚄𝙽 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"☀️ 𝚂𝙰𝚁𝙸 𝙼𝚄𝙼𝚈𝙰 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🃏 𝙼𝙰𝚂𝙺𝙰𝚁𝙰 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"♈ 𝙺𝚄𝚉𝙶𝚄𝙽 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"✳️ 𝙱𝙴𝚈𝙰𝚉 𝙼𝚄𝙼𝚈𝙰 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🦄 𝚄𝙽𝙸𝙲𝙾𝚁𝙽 𝚂𝙴𝚃𝙸\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 𝙶𝙴𝚁𝙸",
},nil,"👕 𝙺𝙸𝚈𝙰𝙵𝙴𝚃 𝙼𝙴𝙽𝚄 👕")
if KFT == nil then
else
if KFT == 1 then
firavun()
end
if KFT == 2 then
mumya()
end
if KFT == 3 then
maskara()
end
if KFT== 4 then
kuzgun()
end
if KFT == 5 then
whitee()
end
if KFT == 6 then
uni()
end
if KFT == 7 then
HOME()
end
end
PUBGMH = -1
end

function whitee()
qmnb = {{["memory"] = 32},{["name"] = "Mumya Seti"},{["value"] = 1400129,["type"] = 4},{["lv"] = 519,["offset"] = 4,["type"] = 4}}
qmxg = {{["value"] = 1400687,["offset"] = -0,["type"] = 4}}
xqmnb(qmnb)
gg.toast(" 𝙱𝙴𝚈𝙰𝚉 𝙼𝚄𝙼𝚈𝙰 𝚂𝙴𝚃𝙸 𝙰𝙺𝚃𝙸𝙵 𝚉𝙴𝚄𝚂𝚂 ") 
end

function kuzgun()
gg.setVisible(false)
gg.clearResults() 
qmnb = { 
{["memory"] = 32}, 
{["name"] = "Kanlı Kuzgun Seti Aktif ??"}, 
{["value"] = 1400129, ["type"] = 4}, 
{["lv"] = 519, ["offset"] = 4, ["type"] = 4}, 
} 
qmxg = { 
{["value"] = 1405870, ["offset"] = 0, ["type"] = 4}, 
 
} 
xqmnb(qmnb) 
gg.clearResults() 
gg.toast(" 𝙺𝚄𝚉𝙶𝚄𝙽 𝚂𝙴𝚃𝙸 𝙰𝙺𝚃𝙸𝙵 𝚉𝙴𝚄𝚂𝚂 ")
end


function firavun(...)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "FİRAVUN SETİ AKTİF 🥋"
      },
      {
        ["value"] = 1400129,
        ["type"] = 4
      },
      {
        ["lv"] = 519,
        ["offset"] = 4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1405628,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    gg.toast(" 𝙵𝙸𝚁𝙴𝚅𝚄𝙽 𝚂𝙴𝚃𝙸 𝙰𝙺𝚃𝙸𝙵 𝚉𝙴𝚄𝚂𝚂 ")
  end--Fᴜɴᴄᴛɪᴏɴ

  
  

  function mumya(...)
    gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.setVisible(false)
qmnb = {
{["memory"] = 32},
{["name"] = "SARI MUMYA SETİ AKTİF 😍"},
{["value"] = 1400129, ["type"] = 4},
{["lv"] = 519, ["offset"] = 4, ["type"] = 4},
}
gg.setVisible(false)
qmxg = {
{["value"] = 1405623, ["offset"] = 0, ["type"] = 4},
}
gg.setVisible(false)
xqmnb(qmnb)
gg.setVisible(false)
gg.clearResults()
gg.toast(" 𝚂𝙰𝚁𝙸 𝙼𝚄𝙼𝚈𝙰 𝚂𝙴𝚃𝙸 𝙰𝙺𝚃𝙸𝙵 𝚉𝙴𝚄𝚂𝚂 ")
  end--Fᴜɴᴄᴛɪᴏɴ
  
 
  
  
function maskara()
gg.clearResults()
gg.setRanges(32)--maskara
qmnb = {{["memory"] = 32},{["name"] = ""},{["value"] = 1400129, ["type"] = 4},{["lv"] = 519, ["offset"] = 4, ["type"] = 4},}
qmxg = {{["value"] = 1405092, ["offset"] = 0, ["type"] = 4},}
xqmnb(qmnb)
gg.clearResults()
gg.sleep(200)
gg.alert("🃏Maskara Seti Aktif zeuss🃏")
end
  
function uni()
gg.setVisible(false)

gg.clearResults()
qmnb={
{["memory"] = 32},
{["name"]="ᴜᴄɪᴄᴏʀɴ sᴇᴛ ᴀᴋᴛɪғ 🦄"},
{["value"] = 1400129, ["type"] =4},
{["lv"]=519,["offset"]=4,["type"]=4}

}
qmxg={
{["value"]=1405482,["offset"]=0,["type"]=4},

}
xqmnb(qmnb)

gg.clearResults()
gg.toast(" 𝚄𝙽𝙸𝙲𝙾𝚁𝙽 𝚂𝙴𝚃 𝙰𝙺𝚃𝙸𝙵 𝚉𝙴𝚄𝚂𝚂 ")
end
  
function TR()
SKNS2MN = gg.choice({
"🔫 M416 Skin Menü",
"👘 AKM Skin Menü",
"✳️ M762 Skin Menü",
"🚈 Hafif Makinalı Skin Menü",
"👑 Keskin Nişancı Skin Menü",
"📦 Ağır Makinalı Skin Menü",
"🔙 Geri",
  
}, 2000, "🔫 Silah SKİN MENÜ 🔫" )
if SKNS2MN == nil then else
if SKNS2MN == 1 then M4162() end
if SKNS2MN == 2 then AKM2() end
if SKNS2MN == 3 then M772() end
if SKNS2MN == 4 then UMP2() end
if SKNS2MN == 5 then AWM2() end
if SKNS2MN == 6 then M2492() end
if SKNS2MN == 7 then HOME() end
end
PUBGMH = -1
end


function M772()
M772MN = gg.choice({
"🐎 Midilli M762\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🌸 Pembe M762\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri"
}, 10, "🔫 M762 Skin Menü 🔫" )
if M772MN == nil then else
if M772MN == 1 then midil() end
if M772MN == 2 then pem() end
if M772MN == 3 then HOME() end
end
PUBGMH = -1
end

function midil()
gg.clearResults()--m762
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101008026", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Midilli M762 Aktif✅")
end

function pem()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101008050", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Pembe M762 Aktif✅")
end


function M2492()
M2492MN = gg.choice({
"👑 Altın 249\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🌟 DP Skin\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri",
}, 10, "🔫 Ağır Makinalı Skin Menü 🔫" )
if M2492MN == nil then else
if M2492MN == 1 then m249() end
if M2492MN == 2 then dpskin() end
if M2492MN == 3 then HOME() end
end
PUBGMH = -1
end

function m249()
gg.clearResults()--m249
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10500100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1105001020", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Altın M249 Aktif✅")
end


function dpskin()
gg.clearResults()--dp
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10500200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1105002011", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Dp Skin Aktif✅")
end


function AWM2()
AWM2MN = gg.choice({
"🌆 Mor İntikam AWM\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"👑 Anubis M24\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🐧 Penguen Mini 14\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri",
}, 10, "🔫 Keskin Nişancı Skin Menü 🔫" )
if AWM2MN == nil then else
if AWM2MN == 1 then mor() end
if AWM2MN == 2 then anubis() end
if AWM2MN == 3 then mini() end
if AWM2MN == 4 then HOME() end
end
PUBGMH = -1
end




function mini()
gg.clearResults()--mini 14
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300600 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1103006030", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Penguen Mini 14 Aktif")
end




function mor()
gg.clearResults()--awm
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300300 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1103003022", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Mor intikam Awm Aktif✅")
end


function anubis()
gg.clearResults()--m24
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10300200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1103002030", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Anubis M24 Aktif✅")
end



function UMP2()
UMP2MN = gg.choice({
"🎄 Yıl Dönümü Thampson\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🟠 Turuncu UMP\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🌟 Uzi Skin\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri",
}, 10, "🔫 Hafif Makinalı Skin Menü 🔫" )
if UMP2MN == nil then else
if UMP2MN == 1 then thampson() end
if UMP2MN == 2 then turuncu() end
if UMP2MN == 3 then uziskn() end
if UMP2MN == 4 then HOME() end

end
PUBGMH = -1
end

function uziskn()
gg.clearResults()--uzi
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200100 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1102001036", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Uzi Skin Aktif✅")
end


function thampson()
gg.clearResults()--tomygun
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1102004018", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yıl Dönümü Thampson Aktif✅")
end

function turuncu()
gg.clearResults()--ump
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10200200 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1102002053", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Turuncu Ump Aktif✅")
end


function AKM2()
AKM2MN = gg.choice({
"🧊 Buz Diyarı AKM\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🏜️ Çöl Fosili AKM\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🌟 Altın AKM\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri",
}, 10, "🔫 Akm Skin Menü 🔫" )
if AKM2MN == nil then else
if AKM2MN == 1 then buz() end
if AKM2MN == 2 then fosil() end
if AKM2MN == 3 then tm() end
if AKM2MN == 4 then HOME() end
end
PUBGMH = -1
end

function buz()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001089", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Buz Diyarı Akm Aktif✅")
end

function fosil()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001103", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Çöl Fosili Akm Aktif✅")
end

function tm()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101001030", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Altın Akm Aktif✅")
end



function M4162()
M4162MN = gg.choice({
"🃏 𝙼𝙰𝚂𝙺𝙰𝚁𝙰 𝙼416\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"❄️ 𝙱𝚄𝚉 𝙳𝙸𝚈𝙰𝚁𝙸 𝙼416\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🦎 𝙺𝙴𝚁𝚃𝙴𝙽??𝙴𝙻𝙴 𝙼416\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 𝙶𝙴𝚁𝙸"
     }, 10, "🔫 M416 Skin Menü 🔫" )
if M4162MN == nil then else
if M4162MN == 1 then maskara1() end
if M4162MN == 2 then diyar() end
if M4162MN == 3 then kerten() end
if M4162MN == 4 then HOME() end
end
PUBGMH = -1
end

function maskara1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004062", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Maskara M416 Aktif✅")
end

function diyar()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004046", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Buz Diyari M416 Aktif✅")
end

function kerten()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100400 ", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("1101004086", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Kertenkele M416 Aktif✅")
end


function SCARL2()
SCARL2MN = gg.choice({
"🎃 Bal Kabağı Scar-L\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"?? Su Tabancası Scar-L\n╚❑[ᴏʏᴜɴ+Lᴏʙʙʏ]",
"🔙 Geri",
     }, 10, " 🔫 Scar-L Menü 🔫" )
if SCARL2MN == nil then else
if SCARL2MN == 1 then bal() end
if SCARL2MN == 2 then su() end
if SCARL2MN == 3 then HOME() end
end
PUBGMH = -1
end

function bal()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("1101003070", 4)
gg.clearResults()
gg.toast("Bal Kabağı Scar-L Aktif✅")
end

function su()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10100300", 4, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("1101003057", 4)
gg.clearResults()
gg.toast("Su Tabancası Scar-L Aktif✅")
end

function araba1()
MN = gg.choice({
"🚘ᴅᴀᴄɪᴀ ᴘᴏʟɪs ᴀʀᴀʙᴀsɪ ", 
"🚘ᴜᴀᴢ ᴄᴇʜᴇɴɴᴇᴍ ᴀᴛᴇşɪ",
"🚘 ʙᴀɢɪ ᴋᴀᴛɪʟ ᴀᴠᴄɪ",
"🚘 Mᴄʟᴀᴇʀᴇɴ Pearlacent",
"🚘 Mᴄʟᴀᴇʀᴇɴ ɢʟᴏʀʏ ʙᴇʏᴀᴢ",
"🚘 Mᴄʟᴀᴇʀᴇɴ ʀᴏʏᴀʟ sɪʏᴀʜ",
"᚛🔙᚜ Geri "
     }, 10, " 𝙰𝚁𝙰𝙱𝙰 𝚂𝙺𝙸𝙽 𝙼𝙴𝙽𝚄 ")
if MN == nil then else
if MN == 1 then dacia() end
if MN == 2 then uaz() end
if MN == 3 then bagi() end
if MN == 4 then MC1() end
if MN == 5 then MC2() end
if MN == 6 then MC3() end
if MN == 7 then HOME() end
end
PUBGMH = -1
end

 function dacia()
 gg.clearResults()
gg.setRanges(32)-- polis arabası --
qmnb = {{["memory"] = 32},{["name"] = ""},{["value"] = 1903001, ["type"] = 4},{["lv"] = 903, ["offset"] = -4, ["type"] = 4},}
qmxg = {{["value"] = 1903019, ["offset"] = 0, ["type"] = 4},}xqmnb(qmnb)
gg.clearResults()
gg.toast("✔️ Ꭺᴋᴛiғ Ꭼᴅiʟᴅi")
gg.sleep(200)
end

function uaz()
gg.clearResults()
gg.setRanges(32)-- cehennem ateşi --
qmnb = {{["memory"] = 32},{["name"] = ""},{["value"] = 1908001, ["type"] = 4},{["lv"] = 908, ["offset"] = -4, ["type"] = 4},}
qmxg = {{["value"] = 1908009, ["offset"] = 0, ["type"] = 4},}xqmnb(qmnb)
gg.clearResults()
gg.toast("✔️ Ꭺᴋᴛiғ Ꭼᴅiʟᴅi")
gg.sleep(200)
end

function bagi()
gg.clearResults()
gg.setRanges(32)-- katil avcı --
qmnb = {{["memory"] = 32},{["name"] = ""},{["value"] = 1907001, ["type"] = 4},{["lv"] = 907, ["offset"] = -4, ["type"] = 4},}
qmxg = {{["value"] = 1907025, ["offset"] = 0, ["type"] = 4},}xqmnb(qmnb)
gg.clearResults()
gg.toast("✔️ Ꭺᴋᴛiғ Ꭼᴅiʟᴅi")
gg.sleep(200)
end

function MC1()
gg.clearResults()--MClaren Pearlacent
qmnb = {{["memory"] = 32},{["name"] = "value$nill"},{["value"] = 1961001,["type"] = 4},{["lv"] = 585,["offset"] = 4,["type"] = 4}}
qmxg = {{["value"] = 1961015,["offset"] = -0,["type"] = 4}}
xqmnb(qmnb)
gg.toast("🚄 MClaren Pearlacent Aktif 🚄")
end

function MC2()
gg.setVisible(false)--MClaren Glory White
qmnb = {{["memory"] = 32},{["name"] = "value$nill"},{["value"] = 1961001,["type"] = 4},{["lv"] = 585,["offset"] = 4,["type"] = 4}}
qmxg = {{["value"] = 1961014,["offset"] = -0,["type"] = 4}}
xqmnb(qmnb)
gg.toast("🚄 MClaren Glory White Aktif 🚄")
end

function MC3()
gg.setVisible(false)
qmnb = {{["memory"] = 32},{["name"] = "value$nill"},{["value"] = 1961001,["type"] = 4},{["lv"] = 585,["offset"] = 4,["type"] = 4}}
qmxg = {{["value"] = 1961013,["offset"] = -0,["type"] = 4}}
xqmnb(qmnb)
gg.toast("🚄 MClaren Royal Black Aktif 🚄")
end


function cnta()
env1 = gg["choice"]({
"⛄ ᴋɪş ᴋɪʀᴀʟɪᴄ̧ᴇsɪ ᴄ̧ᴀɴᴛᴀsɪ",
"😍 ᴇᴍᴏᴊɪ ᴄ̧ᴀɴᴛᴀsɪ",
"🎁 ɴᴏᴇʟ ᴄ̧ᴀɴᴛᴀsɪ",
"🔙 ɢᴇʀɪ ɢɪᴛ"
}, 2000, "🎒 • ᏟᎪΝͲᎪ ՏᏦᏆΝ ᎻᎪᏟᏦ • 🎒")
if env1 == 1 then
kiscantasi()
end
if env1 == 2 then
emojicanta()
end
if env1 == 3 then
yildonumucanta()
end
if env1 == 4 then
HOME()
end
PUBGMH = -1
end

function kiscantasi(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501001,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501001216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501002,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501002216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501003,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501003216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501004,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501002216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501005,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501003216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "AKTİF 🔥"
      },
      {
        ["value"] = 501006,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1501003216,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
  end--Fᴜɴᴄᴛɪᴏɴ


function emojicanta(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501001,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501001229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501002,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501002229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501003,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501004,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501002229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501005,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Emoji Çanta"
      },
      {
        ["value"] = 501006,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003229,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
  end--Fᴜɴᴄᴛɪᴏɴ

function yildonumucanta(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501001,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501001217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501002,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501002217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501003,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501004,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501002217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501005,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Yıl Dönümü Çanta"
      },
      {
        ["value"] = 501006,
        ["type"] = 4
      },
      {
        ["lv"] = 501,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1501003217,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
  end
  
function kask()
kask1 = gg["choice"]({
"❄️ ʙᴜᴢ ᴅɪʏᴀʀɪ ᴋᴀsᴋ",
"🎑 ғɪʀᴀᴠᴜɴ ᴋᴀsᴋ",
"⚒️ ᴅᴇᴍɪʀ ᴅᴏᴋᴜᴍ ᴋᴀsᴋ",
"🔙𝙶𝙴𝚁𝙸"
}, 2000, "⛑️ • ᏦᎪՏᏦ ՏᏦᏆΝ ᎻᎪᏟᏦ • ⛑️ ")
if kask1 == 1 then
buzdiyarikask()
end
if kask1 == 2 then
firavunkask()
end
if kask1 == 3 then
demirkask()
end
if kask1 == 4 then
HOME()
end
PUBGMH = -1
end

function buzdiyarikask(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Buz Diyarı Kask"
      },
      {
        ["value"] = 502001,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1502001023,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Buz Diyarı Kask"
      },
      {
        ["value"] = 502004,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1502002023,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Buz Diyarı Kask zeuss"
      },
      {
        ["value"] = 502002,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1502002023,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Buz Diyarı Kask"
      },
      {
        ["value"] = 502005,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1502002023,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Buz Diyarı Kask"
      },
      {
        ["value"] = 502003,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    qmxg = {
      {
        ["value"] = 1502002023,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    xqmnb(qmnb)
    gg["clearResults"]()
  end--Fᴜɴᴄᴛɪᴏɴ

function firavunkask(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Firavun Kask"
      },
      {
        ["value"] = 502001,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502001093,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Firavun Kask"
      },
      {
        ["value"] = 502004,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002093,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Firavun Kask"
      },
      {
        ["value"] = 502002,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002093,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Firavun Kask"
      },
      {
        ["value"] = 502005,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002093,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Firavun Kask"
      },
      {
        ["value"] = 502003,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502003093,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
  end

function demirkask(...)
    gg["clearResults"]()
    gg["setRanges"](gg["REGION_ANONYMOUS"])
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Demir Döküm Kask"
      },
      {
        ["value"] = 502001,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502001050,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Demir Döküm Kask"
      },
      {
        ["value"] = 502004,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002050,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Demir Döküm Kask"
      },
      {
        ["value"] = 502002,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002050,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Demir Döküm Kask"
      },
      {
        ["value"] = 502005,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502002050,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
    qmnb = {
      {
        ["memory"] = 32
      },
      {
        ["name"] = "Demir Döküm Kask"
      },
      {
        ["value"] = 502003,
        ["type"] = 4
      },
      {
        ["lv"] = 502,
        ["offset"] = -4,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    qmxg = {
      {
        ["value"] = 1502003050,
        ["offset"] = 0,
        ["type"] = 4
      }
    }
    gg["setVisible"](false)
    xqmnb(qmnb)
    gg["setVisible"](false)
    gg["clearResults"]()
    gg["setVisible"](false)
  end

function SPEED()
SPPEDMN = gg.choice({
"🏇 Hızlı Koşᵃᶜᵏᵃᵖᵃᵗ\n╚❑[ᴏʏᴜɴ]" .. FLASH,
"🔙 Geri",
     }, 10, " 🏇 Flash Menü 🏇" )
if SPPEDMN == nil then else
if SPPEDMN == 1 then speed() end
if SPPEDMN == 2 then HOME() end
end
PUBGMH = -1
end




FLASH = off
function speed()
  if FLASH == off then
so=gg.getRangesList("libUE4.so")[1].start
py=0x3E0F7D8
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x140D86C
setvalue(so+py,16,-1.25420031e28)
gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1585267064848315881", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    s1 = gg.getResults(100)
    gg.editAll("-1585267068834414550", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH1 = gg.getResults(1000)
    gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH2 = gg.getResults(1000)
    gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH3 = gg.getResults(1000)
    gg.editAll("-2,044,616,634,647,180,800", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH4 = gg.getResults(1000)
    gg.editAll("-1296744153870237696", gg.TYPE_QWORD)
    gg.clearResults()
    gg.setVisible(false)
    gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
    gg.searchNumber("-6.03221444e26;-1.3078764e28;-3.74440972e28;-1.86389771E-20;-1.11445016e28;-9.39921508e20;-1.8331477e27:33", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("-1.86389771E-20", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH7 = gg.getResults(100)
    gg.editAll("0", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-1505254313802431360", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH85 = gg.getResults(9000000000000000000)
    gg.editAll("-1505254313804899999", gg.TYPE_QWORD)
    gg.clearResults()
    gg.clearResults()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("30D;10D;0F~1F;257D;3D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.08600000292", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH74 = gg.getResults(100)
    gg.editAll("0.4", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("30D;10D;0.0~1.0F;257D;3D::40", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("0.10000000149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    FLVVSH90 = gg.getResults(100)
    gg.editAll("0.4", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("-3.693674e20;-1.2382424e28;-8.5076384e22::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL)
    gg.searchNumber("-1.2382424e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL)
    HENI = gg.getResults(2)
    gg.editAll("0", gg.TYPE_FLOAT)
gg.toast("⚡Flash Açıldı 𝚉𝙴𝚄𝚂𝚂")
FLASH = on
else
so=gg.getRangesList("libUE4.so")[1].start
py=0x3E0F7D8
setvalue(so+py,16,-1.86389771E-20)
so=gg.getRangesList('libUE4.so')[1].start
py=0x140D86C
setvalue(so+py,16,-1.25420021e28)
gg.setValues(s1)
    gg.setValues(FLVVSH1)
    gg.setValues(FLVVSH2)
    gg.setValues(FLVVSH3)
    gg.setValues(FLVVSH4)
    gg.setValues(FLVVSH7)
    gg.setValues(FLVVSH85)
    gg.setValues(FLVVSH74)
    gg.setValues(FLVVSH90)
    gg.setValues(HENI)
    gg.clearResults()
gg.toast("⚡Flash Kapatıldı 𝚉𝙴𝚄𝚂𝚂")
  FLASH = off
end
end

function uc()
gg.clearResults()
      gg.setRanges(gg.REGION_ANONYMOUS)
      gg.searchNumber("-980", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, -0, -1, -0)
      revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
      gg.editAll("60000", gg.TYPE_FLOAT)
      gg.processResume()
      gg.sleep(500)
      if revert ~= nil then
        gg.setValues(revert)
      end
      gg.clearResults()
gg.toast("𝐀𝐑𝐀𝐂 𝐔𝐂𝐔𝐘𝐎𝐑 𝐙𝐄𝐔𝐒𝐒 ")
end


FASTLAND = off
function fastla()
if FASTLAND == off then
FASTLAND = on
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,414,147,695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,477,699,789", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Fast Land Aktif ZEUSS✅")
else
FASTLAND = off
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,525,216,907,477,699,789", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4,525,216,907,414,147,695", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Fast Land Devre Dışı ZEUSS❌")
end
end


function CLOSE()
gg.alert("✨𝐊𝐄𝐍𝐃İ𝐍𝐄 İ𝐘İ 𝐁𝐀𝐊✨\n", "𝐒𝐄𝐍𝐃𝐄 𝚉𝙴𝚄𝚂❤️")
  print("❣️KENDİNE İYİ BAK❣️")
  print("☆  ┌─┐   .─┐☆ ★𝐇İ𝐋𝐄 𝐌𝐎𝐁İ𝐋𝐄★")
  print("    │▒│ /▒/ ")
  print("    │▒│/▒/    𝐒𝐂𝐑𝐈𝐏𝐓 :- 𝐛𝐲 𝚉𝙴𝚄𝚂🛡")
  print("    │▒/▒/─┬─┐")
  print("    │▒│▒|▒│▒│ 𝚉𝙴𝚄𝚂 ❤️")
  print("┌┴─┴─┐-┘─┘  ")
  print("│▒┌──┘▒▒▒│ 𝐒𝐂𝐑𝐈𝐏𝐓 :- 𝐛𝐲 𝚉𝙴𝚄𝚂 💙")
  print("└┐▒▒▒▒▒▒┌┘ ")
  print("    └┐▒▒▒▒┌┘  𝚉𝙴𝚄𝚂 ❤")
  print("▄︻̷̿┻̿═━一 𝚉𝙴𝚄𝚂")
  print("▄︻̷̿┻̿═━一 ZEUSS✨")
  gg.skipRestoreState() 
gg.setVisible(true)
os.exit()
 end

while true do
  if gg.isVisible(true) then
    PUBGMH = 1
    gg.setVisible(false)
  end
  gg.clearResults()
  if PUBGMH == 1 then
    HOME()
  end
end
