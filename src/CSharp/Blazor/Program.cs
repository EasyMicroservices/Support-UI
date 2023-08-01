using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
<<<<<<< HEAD
<<<<<<< HEAD
using MudBlazor.Services;

=======
>>>>>>> 05d4eea (Creating new project of support)
=======
using MudBlazor.Services;

>>>>>>> 2e16d2b (change gitignore file)

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

<<<<<<< HEAD
<<<<<<< HEAD
builder.Services.AddMudServices();

=======
>>>>>>> 05d4eea (Creating new project of support)
=======
builder.Services.AddMudServices();

>>>>>>> 2e16d2b (change gitignore file)
var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();

app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();
