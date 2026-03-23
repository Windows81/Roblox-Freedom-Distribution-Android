.class Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;
.super Ljava/lang/Object;

# interfaces
.implements Lio/chirp/connect/helpers/LogManager$LogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/connect/helpers/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogHandlerLogcat"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/chirp/connect/helpers/LogManager$1;)V
    .locals 0

    invoke-direct {p0}, Lio/chirp/connect/helpers/LogManager$LogHandlerLogcat;-><init>()V

    return-void
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ChirpConnect"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
