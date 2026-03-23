.class Lcom/roblox/client/p/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/p/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/p/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/p/a;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/roblox/client/p/a$2;->a:Lcom/roblox/client/p/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/p/a$2;->a:Lcom/roblox/client/p/a;

    invoke-static {v0}, Lcom/roblox/client/p/a;->a(Lcom/roblox/client/p/a;)V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
