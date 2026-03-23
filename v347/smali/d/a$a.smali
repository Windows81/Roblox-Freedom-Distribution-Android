.class final Ld/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/e",
        "<",
        "Lb/ac;",
        "Lb/ac;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Ld/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Ld/a$a;

    invoke-direct {v0}, Ld/a$a;-><init>()V

    sput-object v0, Ld/a$a;->a:Ld/a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/ac;)Lb/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-static {p1}, Ld/o;->a(Lb/ac;)Lb/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    invoke-virtual {p1}, Lb/ac;->close()V

    .line 99
    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lb/ac;->close()V

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    check-cast p1, Lb/ac;

    invoke-virtual {p0, p1}, Ld/a$a;->a(Lb/ac;)Lb/ac;

    move-result-object v0

    return-object v0
.end method
