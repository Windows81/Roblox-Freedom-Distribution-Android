.class Lcom/roblox/client/j/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/j/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/roblox/client/j/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/j/b;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/roblox/client/j/b$3;->b:Lcom/roblox/client/j/b;

    iput-object p2, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 69
    const-string v0, "logout"

    const-string v1, "yes"

    invoke-static {v0, v1}, Lcom/roblox/client/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    invoke-static {}, Lcom/roblox/client/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/roblox/client/j/b$3;->b:Lcom/roblox/client/j/b;

    iget-object v1, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/roblox/client/j/b$3;->b:Lcom/roblox/client/j/b;

    iget-object v3, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    const v5, 0x7f0e005a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    const v6, 0x7f0e005b

    .line 73
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v2, v3, v4, v5}, Lcom/roblox/client/j/b;->a(Lcom/roblox/client/j/b;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/j/b;->a(Landroid/content/Context;Landroid/app/ProgressDialog;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;)Lcom/roblox/client/startup/b;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/j/b$3;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/startup/b;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method
