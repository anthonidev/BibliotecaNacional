package vista;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Test {
    private static String ruta = System.getProperty("user.dir")+"/Boleta_N°10000.pdf";
    private static final Font fontTitulo = FontFactory.getFont(FontFactory.HELVETICA, 20, Font.BOLD);
    private static final Font fontHeader = FontFactory.getFont(FontFactory.HELVETICA, 12, Font.BOLD, BaseColor.WHITE);
    private static final Font fontBody = FontFactory.getFont(FontFactory.HELVETICA, 11, Font.NORMAL);
    
    public static void main(String[] args) {
        crearPDF();
    }
    
    public static void crearPDF() {
        try {
            Document documento = new Document(PageSize.A4);
            documento.setMargins(45, 45, 20, 20);
            FileOutputStream ficheroPDF=new FileOutputStream(ruta);
            PdfWriter.getInstance(documento, ficheroPDF);
            documento.addTitle("BOLETA 10000");
            documento.open();
            
            Paragraph titulo=new Paragraph("BOLETA ELECTRÓNICA N°10000\n\n", fontTitulo);
            titulo.setAlignment(Element.ALIGN_CENTER);
            documento.add(titulo);
            
            PdfPTable tabla;
            
            tabla=new PdfPTable(2);
            tabla.setWidthPercentage(100);
            tabla.getDefaultCell().setBorder(0);
            
            DateTimeFormatter fecha = DateTimeFormatter.ofPattern("dd/MM/yyy");
            DateTimeFormatter hora = DateTimeFormatter.ofPattern("hh:mm a");
            tabla.addCell("Fecha de emisión: "+fecha.format(LocalDate.now())+" - "+hora.format(LocalTime.now()));
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell("Pedido: 10052");
            
            documento.add(tabla);
            documento.add(datosPersonales(tabla));
            documento.add(detallePedido(tabla));
            documento.add(fechasPedido(tabla));
            
            documento.close();
            System.out.println("¡Se ha generado la hoja PDF!");
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        } catch (FileNotFoundException fileNotFoundException) {
            System.out.println("No se encontró el fichero para generar el pdf: " + fileNotFoundException);
        }
    }
    
    public static PdfPTable datosPersonales(PdfPTable tabla) {
        try {
            tabla=new PdfPTable(2);
            tabla.setWidthPercentage(100);
            tabla.setWidths(new float[] {7,20});
            tabla.setSpacingBefore(30);
            tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.getDefaultCell().setPadding(4);
            tabla.getDefaultCell().setPaddingBottom(7);
            tabla.getDefaultCell().setColspan(2);
            tabla.getDefaultCell().setBorder(0);
            tabla.addCell(new Phrase("DATOS PERSONALES", fontHeader));
            tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_LEFT);
            tabla.getDefaultCell().setColspan(1);
            tabla.addCell("Cliente:");
            tabla.addCell("Jesus Piscoya Bances");
            tabla.addCell("DNI:");
            tabla.addCell("8741245.");
            tabla.addCell("Dirección:");
            tabla.addCell("Avenida 154, Ancón");
            tabla.getDefaultCell().setBorderWidthBottom(2);
            tabla.addCell("Celular:");
            tabla.addCell("974512578");
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        } return tabla;
    }
    
    public static PdfPTable detallePedido(PdfPTable tabla) {
        try {
            tabla=new PdfPTable(6);
            tabla.setWidthPercentage(100);
            tabla.setWidths(new float[] {2,3,10,4,4,4});
            tabla.setSpacingBefore(30);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
            tabla.getDefaultCell().setPadding(8);
            tabla.getDefaultCell().setPaddingBottom(10);
            tabla.addCell(new Phrase("#", fontHeader));
            tabla.addCell(new Phrase("ID", fontHeader));
            tabla.addCell(new Phrase("NOMBRE", fontHeader));
            tabla.addCell(new Phrase("PRECIO", fontHeader));
            tabla.addCell(new Phrase("CANT.", fontHeader));
            tabla.addCell(new Phrase("IMPORTE", fontHeader));
            
            for (int i = 0; i < 10; i++) {
                tabla.getDefaultCell().setBackgroundColor(BaseColor.LIGHT_GRAY);
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
                tabla.getDefaultCell().setBorder(0);
                tabla.getDefaultCell().setPadding(10);
                tabla.addCell(new Phrase(String.valueOf(i), fontBody));
                tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
                tabla.addCell(new Phrase(String.valueOf(i*1000), fontBody));
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_LEFT);
                tabla.addCell(new Phrase("Nombre"+i, fontBody));
                tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
                tabla.addCell(new Phrase(String.valueOf(i*i*13), fontBody));
                tabla.addCell(new Phrase(String.valueOf(i+1), fontBody));
                tabla.addCell(new Phrase(String.valueOf(i*i*13*(i+1)), fontBody));
            }
            
            tabla.getDefaultCell().setBackgroundColor(BaseColor.DARK_GRAY);
            tabla.getDefaultCell().setBorderColorTop(BaseColor.WHITE);
            tabla.getDefaultCell().setBorderWidthTop(3);
            tabla.getDefaultCell().setPadding(6);
            tabla.getDefaultCell().setPaddingBottom(8);
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell(new Phrase("SUBTOTAL", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase("S/ 1248", fontHeader));
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell(new Phrase("IGV", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase("S/ 324", fontHeader));
            tabla.getDefaultCell().setColspan(5);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
            tabla.addCell(new Phrase("TOTAL", fontHeader));
            tabla.getDefaultCell().setColspan(1);
            tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
            tabla.addCell(new Phrase("S/ 1548", fontHeader));
        } catch (DocumentException documentException) {
            System.out.println("Se ha producido un error al generar un documento: " + documentException);
        } return tabla;
    }
    
    public static PdfPTable fechasPedido(PdfPTable tabla) {
        tabla=new PdfPTable(2);
        tabla.setWidthPercentage(100);
        tabla.setSpacingBefore(30);
        tabla.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
        tabla.getDefaultCell().setBackgroundColor(BaseColor.BLUE);
        tabla.getDefaultCell().setPadding(5);
        tabla.getDefaultCell().setPaddingBottom(7);
        tabla.addCell(new Phrase("FECHA DE ENTREGA", fontHeader));
        tabla.addCell(new Phrase("FECHA DE DEVOLUCIÓN", fontHeader));
        tabla.getDefaultCell().setBackgroundColor(BaseColor.WHITE);
        tabla.getDefaultCell().setBorder(0);
        tabla.getDefaultCell().setBorderWidthBottom(2);
        tabla.getDefaultCell().setPadding(5);
        tabla.getDefaultCell().setPaddingBottom(7);
        tabla.addCell(new Phrase(LocalDate.now().toString(), fontBody));
        tabla.addCell(new Phrase(LocalDate.now().plusDays(30).toString(), fontBody));
        return tabla;
    }
}
