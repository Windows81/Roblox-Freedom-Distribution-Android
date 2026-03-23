.class Ld/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h;->a(Ld/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/d;

.field final synthetic b:Ld/h;


# direct methods
.method constructor <init>(Ld/h;Ld/d;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Ld/h$1;->b:Ld/h;

    iput-object p2, p0, Ld/h$1;->a:Ld/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ld/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/l",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Ld/h$1;->a:Ld/d;

    iget-object v1, p0, Ld/h$1;->b:Ld/h;

    invoke-interface {v0, v1, p1}, Ld/d;->a(Ld/b;Ld/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Ld/h$1;->a:Ld/d;

    iget-object v1, p0, Ld/h$1;->b:Ld/h;

    invoke-interface {v0, v1, p1}, Ld/d;->a(Ld/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/e;Lb/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Ld/h$1;->b:Ld/h;

    invoke-virtual {v0, p2}, Ld/h;->a(Lb/ab;)Ld/l;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 111
    invoke-direct {p0, v0}, Ld/h$1;->a(Ld/l;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-direct {p0, v0}, Ld/h$1;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lb/e;Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Ld/h$1;->a:Ld/d;

    iget-object v1, p0, Ld/h$1;->b:Ld/h;

    invoke-interface {v0, v1, p2}, Ld/d;->a(Ld/b;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
