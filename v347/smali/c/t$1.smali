.class final Lc/t$1;
.super Lc/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lc/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Lc/t;
    .locals 0

    .prologue
    .line 55
    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/t;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method
