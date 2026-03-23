.class Lcom/roblox/client/signup/multiscreen/c/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/multiscreen/c/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/multiscreen/c/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/multiscreen/c/b;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$3;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$3;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a(Lcom/roblox/client/signup/multiscreen/c/b;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "closeButton"

    invoke-static {p1, v0}, Lcom/roblox/client/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$3;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-static {p1}, Lcom/roblox/client/signup/multiscreen/c/b;->b(Lcom/roblox/client/signup/multiscreen/c/b;)Lcom/roblox/client/signup/multiscreen/c/b$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/signup/multiscreen/c/b$a;->p_()V

    .line 138
    iget-object p1, p0, Lcom/roblox/client/signup/multiscreen/c/b$3;->a:Lcom/roblox/client/signup/multiscreen/c/b;

    invoke-virtual {p1}, Lcom/roblox/client/signup/multiscreen/c/b;->a()V

    return-void
.end method
