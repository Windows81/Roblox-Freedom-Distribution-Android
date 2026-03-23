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

    .line 131
    iput-object p1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 134
    iget-object p1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    invoke-virtual {p1}, Lcom/roblox/client/RobloxWebActivity;->finish()V

    .line 135
    iget-object p1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    iget v0, p1, Lcom/roblox/client/RobloxWebActivity;->q:I

    iget-object v1, p0, Lcom/roblox/client/RobloxWebActivity$1;->a:Lcom/roblox/client/RobloxWebActivity;

    iget v1, v1, Lcom/roblox/client/RobloxWebActivity;->r:I

    invoke-virtual {p1, v0, v1}, Lcom/roblox/client/RobloxWebActivity;->overridePendingTransition(II)V

    return-void
.end method
