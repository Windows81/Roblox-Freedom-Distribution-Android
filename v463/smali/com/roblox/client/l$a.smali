.class Lcom/roblox/client/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/roblox/client/game/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/roblox/client/game/i;

    invoke-direct {v0}, Lcom/roblox/client/game/i;-><init>()V

    sput-object v0, Lcom/roblox/client/l$a;->a:Lcom/roblox/client/game/i;

    return-void
.end method

.method static synthetic a()Lcom/roblox/client/game/i;
    .locals 1

    .line 44
    sget-object v0, Lcom/roblox/client/l$a;->a:Lcom/roblox/client/game/i;

    return-object v0
.end method
