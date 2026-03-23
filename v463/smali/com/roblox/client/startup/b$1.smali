.class Lcom/roblox/client/startup/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/b;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/b;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/roblox/client/startup/b$1;->a:Lcom/roblox/client/startup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "FragmentRetry"

    const-string p2, "... Dialog::onClick:"

    .line 69
    invoke-static {p1, p2}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p1, p0, Lcom/roblox/client/startup/b$1;->a:Lcom/roblox/client/startup/b;

    invoke-static {p1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/b$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/roblox/client/startup/b$1;->a:Lcom/roblox/client/startup/b;

    invoke-static {p1}, Lcom/roblox/client/startup/b;->a(Lcom/roblox/client/startup/b;)Lcom/roblox/client/startup/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/startup/b$a;->y()V

    :cond_0
    return-void
.end method
