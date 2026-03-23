.class Lcom/roblox/client/login/mvp/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/a;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$7;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/roblox/client/login/mvp/a$7;->a:Lcom/roblox/client/login/mvp/a;

    invoke-virtual {v0}, Lcom/roblox/client/login/mvp/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 190
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$7;->a:Lcom/roblox/client/login/mvp/a;

    iget-object p1, p1, Lcom/roblox/client/login/mvp/a;->at:Lcom/roblox/client/login/mvp/a$a;

    invoke-interface {p1}, Lcom/roblox/client/login/mvp/a$a;->x()V

    return-void
.end method
