using SymPy
using Dates
using Gtk

# Define variables
r = symbols("r")

# Define the integrand: π*r^2 - 1
integrand = π * r^2 - 1

# Integrate from r = 1 to r = 3
area_with_offset = integrate(integrand, (r, 1, 3))

# Calculate the area without the offset
integrand_without_offset = π * r^2
area_without_offset = integrate(integrand_without_offset, (r, 1, 3))

# Calculate the offset
offset = area_with_offset - area_without_offset

# Get the current date and time
current_datetime = now()

# Create the main window
win = GtkWindow("Integration Results")

# Create and place labels for the results
GtkLabel("Area with offset: $area_with_offset") |> (label -> push!(win, label))
GtkLabel("Area without offset: $area_without_offset") |> (label -> push!(win, label))
GtkLabel("Offset: $offset") |> (label -> push!(win, label))
GtkLabel("Current date and time: $current_datetime") |> (label -> push!(win, label))

# Run the application
showall(win)

# Function to calculate the total gains
function calculate_gains(area_with_offset, area_without_offset, multiplier)
    offset = area_with_offset - area_without_offset
    total_gains = offset * multiplier
    return total_gains
end

# Define a multiplier
multiplier = 2

# Calculate the total gains
total_gains = calculate_gains(area_with_offset, area_without_offset, multiplier)

# Print the total gains
println("Total gains: $total_gains")

# Create and place a label for the total gains
GtkLabel("Total gains: $total_gains") |> (label -> push!(win, label))
