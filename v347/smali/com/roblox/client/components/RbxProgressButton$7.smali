.class Lcom/roblox/client/components/RbxProgressButton$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/RbxProgressButton;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/RbxProgressButton;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/RbxProgressButton;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/roblox/client/components/RbxProgressButton$7;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$7;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->h(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/RbxProgressButton$a;

    move-result-object v0

    sget-object v1, Lcom/roblox/client/components/RbxProgressButton$a;->a:Lcom/roblox/client/components/RbxProgressButton$a;

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$7;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->i(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/g;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/roblox/client/components/RbxProgressButton$7;->a:Lcom/roblox/client/components/RbxProgressButton;

    invoke-static {v0}, Lcom/roblox/client/components/RbxProgressButton;->i(Lcom/roblox/client/components/RbxProgressButton;)Lcom/roblox/client/components/g;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/components/g;->a(Landroid/view/View;)V

    .line 417
    :cond_0
    return-void
.end method
