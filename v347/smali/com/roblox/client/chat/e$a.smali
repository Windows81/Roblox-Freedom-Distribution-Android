.class Lcom/roblox/client/chat/e$a;
.super Lcom/roblox/client/components/k;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/chat/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/chat/e;


# direct methods
.method public constructor <init>(Lcom/roblox/client/chat/e;)V
    .locals 1

    .prologue
    .line 306
    iput-object p1, p0, Lcom/roblox/client/chat/e$a;->a:Lcom/roblox/client/chat/e;

    .line 307
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/roblox/client/components/k;-><init>(I)V

    .line 308
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    .prologue
    .line 320
    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    .line 323
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v5, v0, 0x32

    .line 325
    new-instance v1, Lcom/roblox/client/h/o;

    const/16 v4, 0x32

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/roblox/client/h/o;-><init>(JIILcom/roblox/client/h/o$a;)V

    .line 326
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 327
    return-void
.end method

.method public a(ZLcom/roblox/client/e/l;)V
    .locals 2

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p2}, Lcom/roblox/client/e/l;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x1

    .line 334
    iget-object v1, p0, Lcom/roblox/client/chat/e$a;->a:Lcom/roblox/client/chat/e;

    invoke-static {v1}, Lcom/roblox/client/chat/e;->e(Lcom/roblox/client/chat/e;)Lcom/roblox/client/chat/e$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/roblox/client/chat/e$a;->b(I)V

    .line 336
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/roblox/client/realtime/RealtimeService;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/roblox/client/components/k;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method
