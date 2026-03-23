.class public interface abstract Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lc/b$1;

    invoke-direct {v0}, Lc/b$1;-><init>()V

    sput-object v0, Lc/b;->a:Lc/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lc/ae;Lc/ac;)Lc/aa;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
