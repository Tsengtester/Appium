#Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle

Before do
  $driver.start_driver 
  sleep(1)
end

Before do |scenario|
  if is_element_displayed("id", $element_table["startBtnOflandingPage"])
    $driver.find_element(id:$element_table["startBtnOflandingPage"]).click
    sleep(1)
  end
end

After do
  # Do something after each scenario.
  $driver.driver_quit 
end

# After do |scenario|
#   # Do something after each scenario.
#   # The +scenario+ argument is optional, but
#   # if you use it, you can inspect status with
#   # the #failed?, #passed? and #exception methods.

#   if(scenario.failed?)
#     #Do something if scenario fails.
#   end
# end

#Tagged hooks

# Before('@Ex_tag1, @Ex_tag2') do
#   # This will only run before scenarios tagged
#   # with @cucumis OR @sativus.
# end

AfterStep() do
  sleep(1)
end