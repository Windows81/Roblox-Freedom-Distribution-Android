.class Lcom/roblox/client/locale/db/room/d$2;
.super Landroidx/h/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/locale/db/room/d;-><init>(Landroidx/h/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/db/room/d;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/db/room/d;Landroidx/h/e;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/roblox/client/locale/db/room/d$2;->a:Lcom/roblox/client/locale/db/room/d;

    invoke-direct {p0, p2}, Landroidx/h/i;-><init>(Landroidx/h/e;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM Strings"

    return-object v0
.end method
