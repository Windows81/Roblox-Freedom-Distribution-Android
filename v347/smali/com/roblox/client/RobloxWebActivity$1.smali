.class Lcom/roblox/client/RobloxWebActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/RobloxWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/RobloxWebActivity;


# direct methods
.method constructor <init>(Lcom/roblox/client/RobloxWebActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-virtual {v0}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 97
    iget-object v0, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    iget-object v1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-static {v1}, Lcom/roblox/client/RobloxWebActivity;->a(Lcom/roblox/client/RobloxWebActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-static {v2}, Lcom/roblox/client/RobloxWebActivity;->b(Lcom/roblox/client/RobloxWebActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/RobloxWebActivity;->overridePendingTransition(II)V

    .line 98
    return-void
.end method
