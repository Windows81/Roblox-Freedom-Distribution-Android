.class public final enum Lmicrosoft/aspnet/signalr/client/ConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmicrosoft/aspnet/signalr/client/ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmicrosoft/aspnet/signalr/client/ConnectionState;

.field public static final enum Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

.field public static final enum Connecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

.field public static final enum Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

.field public static final enum Reconnecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v2}, Lmicrosoft/aspnet/signalr/client/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    new-instance v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    const-string v1, "Connected"

    invoke-direct {v0, v1, v3}, Lmicrosoft/aspnet/signalr/client/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    new-instance v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    const-string v1, "Reconnecting"

    invoke-direct {v0, v1, v4}, Lmicrosoft/aspnet/signalr/client/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Reconnecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    new-instance v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1, v5}, Lmicrosoft/aspnet/signalr/client/ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lmicrosoft/aspnet/signalr/client/ConnectionState;

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Connected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Reconnecting:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lmicrosoft/aspnet/signalr/client/ConnectionState;->Disconnected:Lmicrosoft/aspnet/signalr/client/ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->$VALUES:[Lmicrosoft/aspnet/signalr/client/ConnectionState;

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

.method public static valueOf(Ljava/lang/String;)Lmicrosoft/aspnet/signalr/client/ConnectionState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;

    return-object v0
.end method

.method public static values()[Lmicrosoft/aspnet/signalr/client/ConnectionState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lmicrosoft/aspnet/signalr/client/ConnectionState;->$VALUES:[Lmicrosoft/aspnet/signalr/client/ConnectionState;

    invoke-virtual {v0}, [Lmicrosoft/aspnet/signalr/client/ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmicrosoft/aspnet/signalr/client/ConnectionState;

    return-object v0
.end method
