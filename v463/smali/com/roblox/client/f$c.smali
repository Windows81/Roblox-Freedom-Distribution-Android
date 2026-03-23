.class Lcom/roblox/client/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/roblox/client/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/roblox/client/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/roblox/client/f;-><init>(Lcom/roblox/client/f$1;)V

    sput-object v0, Lcom/roblox/client/f$c;->a:Lcom/roblox/client/f;

    return-void
.end method

.method static synthetic a()Lcom/roblox/client/f;
    .locals 1

    .line 51
    sget-object v0, Lcom/roblox/client/f$c;->a:Lcom/roblox/client/f;

    return-object v0
.end method
