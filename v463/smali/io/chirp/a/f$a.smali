.class public Lio/chirp/a/f$a;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/chirp/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/chirp/a/f;


# direct methods
.method public constructor <init>(Lio/chirp/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/chirp/a/f$a;->a:Lio/chirp/a/f;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
