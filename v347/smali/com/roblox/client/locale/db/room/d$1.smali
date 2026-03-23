.class Lcom/roblox/client/locale/db/room/d$1;
.super Landroid/arch/b/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/db/room/d;-><init>(Landroid/arch/b/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/b/b/b",
        "<",
        "Lcom/roblox/client/locale/db/room/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/db/room/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/d;Landroid/arch/b/b/e;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d$1;->a:Lcom/roblox/client/locale/db/room/d;

    invoke-direct {p0, p2}, Landroid/arch/b/b/b;-><init>(Landroid/arch/b/b/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "INSERT OR REPLACE INTO `Strings`(`robloxLocaleValue`,`stringsKeyValueMap`) VALUES (?,?)"

    return-object v0
.end method

.method public a(Landroid/arch/b/a/f;Lcom/roblox/client/locale/db/room/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 31
    invoke-interface {p1, v1}, Landroid/arch/b/a/f;->a(I)V

    .line 36
    :goto_0
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->b()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/locale/db/room/a;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    invoke-interface {p1, v2}, Landroid/arch/b/a/f;->a(I)V

    .line 42
    :goto_1
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Lcom/roblox/client/locale/db/room/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/arch/b/a/f;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {p1, v2, v0}, Landroid/arch/b/a/f;->a(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public bridge synthetic a(Landroid/arch/b/a/f;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/roblox/client/locale/db/room/b;

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/locale/db/room/d$1;->a(Landroid/arch/b/a/f;Lcom/roblox/client/locale/db/room/b;)V

    return-void
.end method
