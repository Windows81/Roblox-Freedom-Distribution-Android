.class Lcom/roblox/client/signup/multiscreen/c/a$3;
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

    .line 76
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/b;->d()V

    .line 80
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/b;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/e/b;->f()V

    .line 82
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->b(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/c/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {v0}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/signup/multiscreen/e/b;->b()Lcom/roblox/client/signup/multiscreen/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/roblox/client/signup/multiscreen/c/a$a;->a(Lcom/roblox/client/signup/multiscreen/a/a;)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->c(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/components/RbxBirthdayPicker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/roblox/client/components/RbxBirthdayPicker;->a()V

    .line 85
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/a$3;->a:Lcom/roblox/client/signup/multiscreen/c/a;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/a;->a(Lcom/roblox/client/signup/multiscreen/c/a;)Lcom/roblox/client/signup/multiscreen/e/b;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "birthday"

    const-string v2, "incomplete"

    invoke-virtual {p1, v1, v2, v0}, Lcom/roblox/client/signup/multiscreen/e/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
