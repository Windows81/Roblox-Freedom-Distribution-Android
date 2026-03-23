.class Lcom/roblox/client/ActivityNativeMain$4;
.super Lcom/roblox/client/o$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->A()V
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

    .prologue
    .line 639
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Lcom/roblox/client/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/roblox/client/o$c;)V
    .locals 2

    .prologue
    .line 642
    sget-object v0, Lcom/roblox/client/o$c;->b:Lcom/roblox/client/o$c;

    if-ne v0, p1, :cond_1

    .line 643
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(Z)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    sget-object v0, Lcom/roblox/client/o$c;->c:Lcom/roblox/client/o$c;

    if-ne v0, p1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$4;->a:Lcom/roblox/client/ActivityNativeMain;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/ActivityNativeMain;->b(Z)V

    goto :goto_0
.end method
