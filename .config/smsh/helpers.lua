function confirm(opts)
	opts = opts or {}

	window({
		title = opts.title or "SMSH: Confirm",
		enable_vim_keys = opts.enable_vim_keys ~= false,
		enable_esc_as_exit = opts.enable_esc_as_exit ~= false,
		exit_on_close = opts.exit_on_close,
		present = opts.present,
		root = {
			type = "container",
			orientation = "vertical",
			children = {
				{
					type = "label",
					text = opts.message or "Are you sure?",
					tooltip = opts.tooltip or "",
				},
				{
					type = "button",
					text = opts.yes_text or "Yes",
					tooltip = opts.yes_tooltip or "Yes!",
					action = opts.on_yes or function()
						os.exit(0)
					end,
				},
				{
					type = "button",
					text = opts.no_text or "No",
					tooltip = opts.no_tooltip or "No",
					action = opts.on_no or function()
						os.exit(1)
					end,
				},
			},
		},
	})
end

function prompt(opts)
	opts = opts or {}

	window({
		title = opts.title or "SMSH: Prompt",
		enable_vim_keys = opts.enable_vim_keys or false,
		enable_esc_as_exit = opts.enable_esc_as_exit ~= false,
		exit_on_close = opts.exit_on_close,
		present = opts.present,
		root = {
			type = "container",
			orientation = opts.orientation or "horizontal",
			children = {
				{
					type = "entry",
					text = opts.default_text or "",
					tooltip = opts.tooltip or "Type here",
					action = function(value)
						print(value)
						os.exit(0)
					end,
				},
			},
		},
	})
end

function run_unless_pacman(cmd)
	local lockfile = io.open("/var/lib/pacman/db.lck", "r")
	if lockfile then
		lockfile:close()
		os.execute("notify-send 'Cannot do that while pacman is running' -i system-reboot -u critical")
	else
		os.execute(cmd)
	end
end
