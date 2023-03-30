

name = "DataPlusPlus"
author = "Fly & 墨"
description = "调整饥荒内的多项数值，使难度稍微提升(仍然在合理范围以内)。\n\n该模组应该适用于饥荒进阶的玩家，受到了永不妥协模组的启发。"

version = "0.0.1"
forumthrad = ""
api_version = 10

dst_compatible = true
--all_clients_require_mod = true
dont_starve_compatible = false
reign_of_giants_compatible = false
hamlet_compatible = false
forge_compatible = false


--icon_atlas = "modicon.xml" -- Mod的图标xml文档路径，需要有对应文件存在，否则Mod图标会显示为空白。
--icon = "modicon.tex" -- Mod图标文件名称

server_filter_tags = { 
    "DataPlusPlus"
} 

-- configuration_options = -- 设置选项，可以在Mod选择界面对Mod的一些参数进行选择。这些参数可以在modmain里用GetModConfigData方法读取
-- {-- 这个表中的每一个元素都是一行选项
    -- { -- 一个选项用一张表括起来
        -- name = "NEW_ACTIONS", -- 选项的标识，对应GetModConfigData的第一个参数
        -- label = "新动作", -- 选项的名称
        -- hover = "添加一组新动作，对全体玩家有效", -- 提示说明，当鼠标移动到label上时会自动弹出
        -- options = -- 选项内容，每个元素代表一个选项值
        -- {
            -- {description = "开", data = true}, -- dscripttion是显示在设置面板上的值，data是实际对应的取值
            -- {description = "关", data = false},
        -- },
        -- default = true, -- 选项的默认值，在选项面板点击Reset时，会把该选项的值设置为默认值
    -- },
-- }


