.class public Lio/chirp/connect/helpers/LogManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/chirp/connect/helpers/LogManager$LogHandlerNone;,
        Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;,
        Lio/chirp/connect/helpers/LogManager$LogHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChirpConnect"

.field private static logHandler:Lio/chirp/connect/helpers/LogManager$LogHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/chirp/connect/helpers/LogManager$LogHandlerNone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/chirp/connect/helpers/LogManager$LogHandlerNone;-><init>(Lio/chirp/connect/helpers/LogManager$1;)V

    sput-object v0, Lio/chirp/connect/helpers/LogManager;->logHandler:Lio/chirp/connect/helpers/LogManager$LogHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogs()V
    .locals 2

    new-instance v0, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;-><init>(Lio/chirp/connect/helpers/LogManager$1;)V

    sput-object v0, Lio/chirp/connect/helpers/LogManager;->logHandler:Lio/chirp/connect/helpers/LogManager$LogHandler;

    return-void
.end method

.method public static writeLog(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lio/chirp/connect/helpers/LogManager;->logHandler:Lio/chirp/connect/helpers/LogManager$LogHandler;

    invoke-interface {v0, p0}, Lio/chirp/connect/helpers/LogManager$LogHandler;->writeLog(Ljava/lang/String;)V

    return-void
.end method

.method public static writeLogCat(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;-><init>(Lio/chirp/connect/helpers/LogManager$1;)V

    invoke-virtual {v0, p0}, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;->writeLog(Ljava/lang/String;)V

    return-void
.end method
