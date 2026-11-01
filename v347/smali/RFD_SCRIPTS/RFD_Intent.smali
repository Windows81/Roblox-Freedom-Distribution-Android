.class public LRFD_Intent;
.super Ljava/lang/Object;

# import android.content.Context;
# import android.content.Intent;

# public class RFD_Intent {
#     public static void a(Context context) {
#         Intent intent = new Intent(context, ActivityGlView);
#         intent.addFlags(0x0000000000020000);
#         intent.putExtra("roblox_placeId", placeIden);
#         intent.putExtra("roblox_userId", gameIden);
#         intent.putExtra("roblox_accessCode", gameIden);
#         intent.putExtra("roblox_gameId", 1818);
# 	      context.startActivity(intent);
# 	}
# }


.method public static setBaseUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .prologue

    const-string v0, "configure_dev_roblox" const/4 v1, 1
    invoke-static {p0, v0, v1}, Lcom/roblox/client/util/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/SharedPreferences;
    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0

    const-string v1, "BaseUrl"
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "BaseApiUrl"
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, LRFD_Debuggy;->printStackTrace()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    return-void
.end method


# invoke-static {}, LRFD_Intent;->genIntent(Landroid/content/Context)Landroid/content/Intent;
.method public static launchTheGameNow(Landroid/content/Context;)V
    .locals 5
    .prologue

    .line 1
    const-class v1, Lcom/roblox/client/ActivityGlView;

    .line 2
    new-instance v0, Landroid/content/Intent;
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    # Sets launch flags.
    .line 3
    const/high16 v1, 0x14000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "roblox_placeId" const-wide v2, 1818
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "roblox_userId" const-wide v2, 1630228
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "roblox_accessCode" const-string v2, "VisualPlugin"
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "roblox_gameId"
    const-string v2, "1818"
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "roblox_joinRequestType"
    const/4 v2, 0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "roblox_baseUrl" const-string v2, "192.168.253.211:2005"
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method