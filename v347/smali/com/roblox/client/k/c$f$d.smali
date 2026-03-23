.class Lcom/roblox/client/k/c$f$d;
.super Lcom/roblox/client/k/c$f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field public b:Landroid/widget/TextView;

.field final synthetic c:Lcom/roblox/client/k/c$f;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 477
    iput-object p1, p0, Lcom/roblox/client/k/c$f$d;->c:Lcom/roblox/client/k/c$f;

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/k/c$f$a;-><init>(Lcom/roblox/client/k/c$f;Landroid/view/View;)V

    .line 479
    const v0, 0x7f0801c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/roblox/client/k/c$f$d;->b:Landroid/widget/TextView;

    .line 480
    return-void
.end method
