.class Lcom/roblox/client/NotificationStreamActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/NotificationStreamActivity;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/NotificationStreamActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/NotificationStreamActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/roblox/client/NotificationStreamActivity$1;->a:Lcom/roblox/client/NotificationStreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/roblox/client/NotificationStreamActivity$1;->a:Lcom/roblox/client/NotificationStreamActivity;

    const-string v1, "SETTINGS_TAG"

    invoke-static {}, Lcom/roblox/client/RobloxSettings;->getSettingsNotificationsPagePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/NotificationStreamActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    return v0
.end method
