.class Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/login/mvp/ActivityLoginMVP;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;


# direct methods
.method constructor <init>(Lcom/roblox/client/login/mvp/ActivityLoginMVP;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/roblox/client/login/mvp/ActivityLoginMVP$5;->a:Lcom/roblox/client/login/mvp/ActivityLoginMVP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 387
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/b;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/b;->a(I)Landroid/widget/Button;

    move-result-object v0

    .line 388
    check-cast p1, Landroid/support/v7/app/b;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/app/b;->a(I)Landroid/widget/Button;

    move-result-object v1

    .line 389
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 392
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    invoke-virtual {v0}, Landroid/widget/Button;->invalidate()V

    .line 396
    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 397
    return-void
.end method
