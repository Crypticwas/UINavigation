local ui = {}

local dir = script.Parent

ui.open = function(button:GuiButton, ui1: Frame, ui2: Frame)
    
    button.MouseButton1Click:Connect(function() 
        
        if ui2 == nil then
            
            ui1.Visible = true
            
            return
            
        else
            
            ui1.Visible = true
            ui2.Visible = false
            
        end
        
    end)
    
end

ui.close = function(button:GuiButton, ui1: Frame, ui2: Frame)

    button.MouseButton1Click:Connect(function() 

        if ui2 == nil then

            ui1.Visible = false

            return

        else

            ui1.Visible = false
            ui2.Visible = true

        end

    end)

end

ui.layout = require(script.data)

ui.init = function()
    
    for i,v in pairs(ui.layout) do
        
        if v.opens then
            
            ui.open(v.button, v.opens, v.closes)
            
        end
        
        if v.closes then
            
            ui.close(v.button, v.closes, v.opens)
            
        end
        
        if v.func then
            
            if v.button then
                
                v.button.MouseButton1Click:Connect(function() 
                    
                    v.func()
                    
                end)
                
            else
                
                v.func()
                
            end
            
        end
        
        if v.opens or v.closes or v.func then  else
            
            warn("There is no instance of \"opens\" or \"closes\" or \"func\" in table "..i..". Exiting with code -1")
            
        end
        
    end
    
end

return ui
