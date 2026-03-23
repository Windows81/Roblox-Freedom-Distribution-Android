.class final enum Lcom/roblox/client/realtime/RealtimeService$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/realtime/RealtimeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/roblox/client/realtime/RealtimeService$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/roblox/client/realtime/RealtimeService$e;

.field public static final enum b:Lcom/roblox/client/realtime/RealtimeService$e;

.field public static final enum c:Lcom/roblox/client/realtime/RealtimeService$e;

.field public static final enum d:Lcom/roblox/client/realtime/RealtimeService$e;

.field private static final synthetic e:[Lcom/roblox/client/realtime/RealtimeService$e;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 282
    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$e;

    const-string v1, "UNBOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/realtime/RealtimeService$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/realtime/RealtimeService$e;->a:Lcom/roblox/client/realtime/RealtimeService$e;

    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$e;

    const-string v1, "BINDING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/roblox/client/realtime/RealtimeService$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/realtime/RealtimeService$e;->b:Lcom/roblox/client/realtime/RealtimeService$e;

    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$e;

    const-string v1, "BOUND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/roblox/client/realtime/RealtimeService$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/realtime/RealtimeService$e;->c:Lcom/roblox/client/realtime/RealtimeService$e;

    new-instance v0, Lcom/roblox/client/realtime/RealtimeService$e;

    const-string v1, "UNBINDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/roblox/client/realtime/RealtimeService$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/roblox/client/realtime/RealtimeService$e;->d:Lcom/roblox/client/realtime/RealtimeService$e;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/roblox/client/realtime/RealtimeService$e;

    .line 281
    sget-object v6, Lcom/roblox/client/realtime/RealtimeService$e;->a:Lcom/roblox/client/realtime/RealtimeService$e;

    aput-object v6, v1, v2

    sget-object v2, Lcom/roblox/client/realtime/RealtimeService$e;->b:Lcom/roblox/client/realtime/RealtimeService$e;

    aput-object v2, v1, v3

    sget-object v2, Lcom/roblox/client/realtime/RealtimeService$e;->c:Lcom/roblox/client/realtime/RealtimeService$e;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/roblox/client/realtime/RealtimeService$e;->e:[Lcom/roblox/client/realtime/RealtimeService$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 281
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/roblox/client/realtime/RealtimeService$e;
    .locals 1

    .line 281
    const-class v0, Lcom/roblox/client/realtime/RealtimeService$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/roblox/client/realtime/RealtimeService$e;

    return-object p0
.end method

.method public static values()[Lcom/roblox/client/realtime/RealtimeService$e;
    .locals 1

    .line 281
    sget-object v0, Lcom/roblox/client/realtime/RealtimeService$e;->e:[Lcom/roblox/client/realtime/RealtimeService$e;

    invoke-virtual {v0}, [Lcom/roblox/client/realtime/RealtimeService$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/roblox/client/realtime/RealtimeService$e;

    return-object v0
.end method
