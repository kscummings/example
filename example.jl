using ArgParse
using Printf

function parse_commandline()
    s = ArgParseSettings()
    @add_arg_table! s begin
        "--trial", "-t"
            help = "trial ID"
            arg_type = Int64
            required = true
    end
    return parse_args(s)
end

function main()
    #----- retrieve arguments
    parsed_args = parse_commandline()
    trial_id = parsed_args["trial"]
    @printf("This is trial %d.", trial_id)
end

main()
