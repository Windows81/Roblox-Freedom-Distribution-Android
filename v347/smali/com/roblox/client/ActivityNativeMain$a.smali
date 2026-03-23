.class Lcom/roblox/client/ActivityNativeMain$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/ActivityNativeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method private constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .prologue
    .line 1695
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/ActivityNativeMain;Lcom/roblox/client/ActivityNativeMain$1;)V
    .locals 0

    .prologue
    .line 1695
    invoke-direct {p0, p1}, Lcom/roblox/client/ActivityNativeMain$a;-><init>(Lcom/roblox/client/ActivityNativeMain;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    .line 1702
    invoke-static {v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    .line 1703
    invoke-virtual {v1}, Lcom/roblox/client/ActivityNativeMain;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    .line 1704
    invoke-static {v2}, Lcom/roblox/client/ActivityNativeMain;->d(Lcom/roblox/client/ActivityNativeMain;)Lcom/roblox/client/components/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/components/e;->e()Landroid/widget/TabWidget;

    move-result-object v2

    iget-object v3, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    .line 1705
    invoke-static {v3}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;

    move-result-object v3

    .line 1701
    invoke-static {v0, v1, v2, v3}, Lcom/roblox/engine/components/b;->a(Landroid/view/View;Landroid/view/WindowManager;Landroid/view/View;Landroid/view/View;)Lcom/roblox/engine/components/b;

    move-result-object v0

    .line 1707
    iget v0, v0, Lcom/roblox/engine/components/b;->d:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 1710
    :goto_0
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-static {v1}, Lcom/roblox/client/ActivityNativeMain;->e(Lcom/roblox/client/ActivityNativeMain;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1711
    iget-object v1, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-static {v1, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Lcom/roblox/client/ActivityNativeMain;Z)Z

    .line 1712
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$a;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-static {v0}, Lcom/roblox/client/ActivityNativeMain;->f(Lcom/roblox/client/ActivityNativeMain;)V

    .line 1714
    :cond_0
    return-void

    .line 1707
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
