.class public final enum Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

.field public static final enum InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

.field public static final enum Reconnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    const-string v1, "InitialConnection"

    invoke-direct {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    new-instance v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    const-string v1, "Reconnection"

    invoke-direct {v0, v1, v3}, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->Reconnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    sget-object v1, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->InitialConnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    aput-object v1, v0, v2

    sget-object v1, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->Reconnection:Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    aput-object v1, v0, v3

    sput-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->$VALUES:[Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    return-object v0
.end method

.method public static values()[Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->$VALUES:[Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    invoke-virtual {v0}, [Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmicrosoft/aspnet/signalr/client/transport/ConnectionType;

    return-object v0
.end method
