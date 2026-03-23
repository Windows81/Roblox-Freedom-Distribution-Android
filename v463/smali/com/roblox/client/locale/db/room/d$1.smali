.class Lcom/roblox/client/locale/db/room/d$1;
.super Landroidx/h/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/db/room/d;-><init>(Landroidx/h/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/h/b<",
        "Lcom/roblox/client/locale/db/room/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/db/room/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/d;Landroidx/h/e;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d$1;->a:Lcom/roblox/client/locale/db/room/d;

    invoke-direct {p0, p2}, Landroidx/h/b;-><init>(Landroidx/h/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Strings`(`robloxLocaleValue`,`stringsKeyValueMap`) VALUES (?,?)"

    return-object v0
.end method

.method public a(Landroidx/i/a/f;Lcom/roblox/client/locale/db/room/b;)V
    .locals 2

    .line 32
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 33
    invoke-interface {p1, v1}, Landroidx/i/a/f;->a(I)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    .line 38
    :goto_0
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->b()Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p2}, Lcom/roblox/client/locale/db/room/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 40
    invoke-interface {p1, v0}, Landroidx/i/a/f;->a(I)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-interface {p1, v0, p2}, Landroidx/i/a/f;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic a(Landroidx/i/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/roblox/client/locale/db/room/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/locale/db/room/d$1;->a(Landroidx/i/a/f;Lcom/roblox/client/locale/db/room/b;)V

    return-void
.end method
