.class Lcom/roblox/client/login/mvp/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 137
    iput-object p1, p0, Lcom/roblox/client/login/mvp/a$1;->a:Lcom/roblox/client/login/mvp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 140
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/roblox/client/login/mvp/a$1;->a:Lcom/roblox/client/login/mvp/a;

    invoke-static {p1}, Lcom/roblox/client/login/mvp/a;->a(Lcom/roblox/client/login/mvp/a;)V

    const/4 p1, 0x1

    return p1
.end method
