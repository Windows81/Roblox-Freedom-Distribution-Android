.class Lcom/roblox/client/locale/db/room/d$2;
.super Landroid/arch/b/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/db/room/d;-><init>(Landroid/arch/b/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/db/room/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/d;Landroid/arch/b/b/e;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d$2;->a:Lcom/roblox/client/locale/db/room/d;

    invoke-direct {p0, p2}, Landroid/arch/b/b/i;-><init>(Landroid/arch/b/b/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "DELETE FROM Strings"

    .line 48
    const-string v0, "DELETE FROM Strings"

    return-object v0
.end method
