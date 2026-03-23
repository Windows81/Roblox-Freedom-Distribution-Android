.class Lio/chirp/connect/helpers/LogManager$LogHandlerNone;
.super Ljava/lang/Object;

# interfaces
.implements Lio/chirp/connect/helpers/LogManager$LogHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/connect/helpers/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogHandlerNone"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/chirp/connect/helpers/LogManager$1;)V
    .locals 0

    invoke-direct {p0}, Lio/chirp/connect/helpers/LogManager$LogHandlerNone;-><init>()V

    return-void
.end method


# virtual methods
.method public writeLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
