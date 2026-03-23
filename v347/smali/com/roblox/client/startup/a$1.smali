.class Lcom/roblox/client/startup/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/a;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/roblox/client/startup/a$1;->a:Lcom/roblox/client/startup/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 69
    const-string v0, "FragmentRetry"

    const-string v1, "... Dialog::onClick:"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/roblox/client/startup/a$1;->a:Lcom/roblox/client/startup/a;

    invoke-static {v0}, Lcom/roblox/client/startup/a;->a(Lcom/roblox/client/startup/a;)Lcom/roblox/client/startup/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/roblox/client/startup/a$1;->a:Lcom/roblox/client/startup/a;

    invoke-static {v0}, Lcom/roblox/client/startup/a;->a(Lcom/roblox/client/startup/a;)Lcom/roblox/client/startup/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/roblox/client/startup/a$a;->w()V

    .line 73
    :cond_0
    return-void
.end method
