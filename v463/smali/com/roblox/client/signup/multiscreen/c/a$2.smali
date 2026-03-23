.class Lcom/roblox/client/signup/multiscreen/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$2;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a$2;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/c/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 70
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$2;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object p1

    const-string v0, "login"

    invoke-virtual {p1, v0}, Lcom/roblox/client/signup/multiscreen/e/b;->a(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$2;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->b(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/c/a$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/a$a;->q()V

    return-void
.end method
