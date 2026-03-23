.class Lcom/roblox/client/k/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/k/d;->a(Landroid/support/v7/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/k/d;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/roblox/client/k/d$1;->a:Lcom/roblox/client/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/roblox/client/k/d$1;->a:Lcom/roblox/client/k/d;

    invoke-virtual {v0}, Lcom/roblox/client/k/d;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->onBackPressed()V

    .line 42
    return-void
.end method
