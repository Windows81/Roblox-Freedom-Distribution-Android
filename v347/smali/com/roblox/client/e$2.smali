.class Lcom/roblox/client/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/roblox/client/e$2;->a:Lcom/roblox/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/roblox/client/e$2;->a:Lcom/roblox/client/e;

    invoke-virtual {v0}, Lcom/roblox/client/e;->getLoadingView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    return-void
.end method
