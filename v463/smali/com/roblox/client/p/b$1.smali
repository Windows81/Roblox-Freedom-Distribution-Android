.class Lcom/roblox/client/p/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/p/b;->a(Lcom/roblox/client/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/p/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/p/b;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/roblox/client/p/b$1;->a:Lcom/roblox/client/p/b;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/roblox/client/p/b;->a(IIII)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 109
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/roblox/client/p/b$1;->a(Landroid/graphics/Rect;)V

    return-void
.end method
