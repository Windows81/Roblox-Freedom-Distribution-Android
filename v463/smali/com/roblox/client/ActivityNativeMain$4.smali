.class Lcom/roblox/client/ActivityNativeMain$4;
.super Lcom/roblox/client/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Lcom/roblox/client/w$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/w$c;)V
    .locals 1

    .line 614
    invoke-virtual {p1}, Lcom/roblox/client/w$c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Z)V

    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p1}, Lcom/roblox/client/w$c;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 617
    iget-object p1, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/roblox/client/ActivityNativeMain;->b(Z)V

    :cond_1
    :goto_0
    return-void
.end method
