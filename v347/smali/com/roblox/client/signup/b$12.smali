.class Lcom/roblox/client/signup/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/signup/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/signup/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/signup/b;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/roblox/client/signup/b$12;->a:Lcom/roblox/client/signup/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/roblox/client/signup/b$12;->a:Lcom/roblox/client/signup/b;

    invoke-virtual {v0}, Lcom/roblox/client/signup/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/roblox/client/p;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
