using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
<<<<<<< HEAD
using MudBlazor.Services;

=======
>>>>>>> 05d4eea (Creating new project of support)

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();

<<<<<<< HEAD
builder.Services.AddMudServices();

=======
>>>>>>> 05d4eea (Creating new project of support)
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
