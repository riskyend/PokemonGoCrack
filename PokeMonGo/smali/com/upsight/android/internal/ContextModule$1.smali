.class Lcom/upsight/android/internal/ContextModule$1;
.super Ljava/lang/Object;
.source "ContextModule.java"

# interfaces
.implements Lcom/upsight/android/internal/logger/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/ContextModule;->provideLogWriter()Lcom/upsight/android/internal/logger/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/ContextModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/ContextModule;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/upsight/android/internal/ContextModule$1;->this$0:Lcom/upsight/android/internal/ContextModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logMessage(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/upsight/android/internal/ContextModule$3;->$SwitchMap$com$upsight$android$logger$UpsightLogger$Level:[I

    invoke-virtual {p2}, Lcom/upsight/android/logger/UpsightLogger$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 84
    :goto_b
    return-void

    .line 69
    :pswitch_c
    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 72
    :pswitch_10
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 75
    :pswitch_14
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 78
    :pswitch_18
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 81
    :pswitch_1c
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 67
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public write(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xfa0

    if-le v3, v4, :cond_31

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit16 v0, v3, 0xfa0

    .line 53
    .local v0, "chunkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-gt v1, v0, :cond_34

    .line 54
    add-int/lit8 v3, v1, 0x1

    mul-int/lit16 v2, v3, 0xfa0

    .line 55
    .local v2, "max":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_27

    .line 56
    mul-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/upsight/android/internal/ContextModule$1;->logMessage(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V

    .line 53
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 58
    :cond_27
    mul-int/lit16 v3, v1, 0xfa0

    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/upsight/android/internal/ContextModule$1;->logMessage(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V

    goto :goto_24

    .line 62
    .end local v0    # "chunkCount":I
    .end local v1    # "i":I
    .end local v2    # "max":I
    :cond_31
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/internal/ContextModule$1;->logMessage(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;)V

    .line 64
    :cond_34
    return-void
.end method
